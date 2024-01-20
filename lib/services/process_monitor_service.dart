import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:win32/win32.dart';
part 'process_monitor_service.g.dart';

class ProcessMonitorService {
  static final Map<String, int> _currentProcessIds = {};

  /// Monitor a windows process by name.
  /// Yields null if no process exists, or the PID if it does
  Stream<int?> monitorWindowsProcess(String processName) async* {
    final processes = calloc<DWORD>(1024);
    final cbNeeded = calloc<DWORD>();

    while (true) {
      EnumProcesses(processes, sizeOf<DWORD>() * 1024, cbNeeded);

      var cProcesses = cbNeeded.value / sizeOf<DWORD>();

      var foundProcess = false;
      var pid = -1;
      for (var i = 0; i < cProcesses; i++) {
        if (processes[i] != 0 &&
            _processNameFromPid(processes[i]) == processName) {
          foundProcess = true;
          pid = processes[i];
          break;
        }
      }

      if (foundProcess && _currentProcessIds[processName] != pid) {
        _currentProcessIds[processName] = pid;
        yield pid;
      }

      // Check if process was running last loop but has now died
      if (!foundProcess && _currentProcessIds.containsKey(processName)) {
        _currentProcessIds.remove(processName);
        yield null;
      }

      await Future.delayed(const Duration(seconds: 1));
    }
  }

  // TODO: This is repeated from injection service so lets use this provider there.
  String _processNameFromPid(int pid) {
    const desiredAccess = PROCESS_QUERY_INFORMATION | PROCESS_VM_READ;
    final handle = OpenProcess(desiredAccess, FALSE, pid);

    if (handle == 0) {
      return "unknown process";
    }

    final processName = wsalloc(64);
    final hMod = calloc<HMODULE>();
    final cbNeeded = calloc<DWORD>();

    EnumProcessModules(handle, hMod, sizeOf<HMODULE>(), cbNeeded);
    GetModuleBaseName(handle, hMod.value, processName, sizeOf<WChar>() * 64);

    free(hMod);
    free(cbNeeded);
    var name = processName.toDartString();
    free(processName);
    CloseHandle(handle);
    return name;
  }
}

@riverpod
ProcessMonitorService processMonitorService(ProcessMonitorServiceRef ref) {
  return ProcessMonitorService();
}

final monitorProcessPidProvider =
    StreamProvider.family<int?, String>((ref, processName) {
  final service = ref.read(processMonitorServiceProvider);
  return service.monitorWindowsProcess(processName);
});
