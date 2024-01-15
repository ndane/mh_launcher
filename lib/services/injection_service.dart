import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:win32/win32.dart';

const targetExecutable = "MonsterHunterWorld.exe";
const targetInjectable = "ReShade64.dll";

typedef LoadLibraryNative = IntPtr Function(Pointer<Utf16> lpLibFileName);
typedef LoadLibraryDart = int Function(Pointer<Utf16> lpLibFileName);

class InjectionService {
  Future<bool> launchAndInjectReshade(bool inject) async {
    await launchUrlString("steam://run/582010");

    if (!inject) {
      return true;
    }

    var processId = -1;
    final processes = calloc<DWORD>(1024);
    final cbNeeded = calloc<DWORD>();

    while (processId == -1) {
      EnumProcesses(processes, sizeOf<DWORD>() * 1024, cbNeeded);

      var cProcesses = cbNeeded.value / sizeOf<DWORD>();

      for (var i = 0; i < cProcesses; i++) {
        if (processes[i] != 0 &&
            _processNameFromPid(processes[i]) == targetExecutable) {
          processId = processes[i];
          break;
        }
      }

      if (processId == -1) {
        await Future.delayed(const Duration(milliseconds: 1));
      }
    }

    // Allow initialization time for the target application
    await Future.delayed(const Duration(milliseconds: 30));

    _inject(processId);

    free(cbNeeded);
    free(processes);

    return true;
  }

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

  void _inject(int pid) {
    const desiredAccess = PROCESS_CREATE_THREAD |
        PROCESS_VM_OPERATION |
        PROCESS_VM_READ |
        PROCESS_VM_WRITE |
        PROCESS_QUERY_INFORMATION;
    final handle = OpenProcess(desiredAccess, FALSE, pid);

    final fileName = wsalloc(2048);
    GetModuleFileNameEx(handle, NULL, fileName, sizeOf<WChar>() * 2048);

    // TODO: Check architecture

    var targetDll = fileName
        .toDartString()
        .replaceFirst(targetExecutable, targetInjectable);

    _updateACL(targetDll);

    final remoteBuf = VirtualAllocEx(handle, nullptr,
        sizeOf<WChar>() * targetDll.length, MEM_COMMIT, PAGE_READWRITE);

    var ansiDll = targetDll.toANSI();
    WriteProcessMemory(handle, remoteBuf, ansiDll,
        sizeOf<WChar>() * targetDll.length, nullptr);
    free(ansiDll);

    final kernel32 = 'kernel32.dll'.toNativeUtf16();
    final hModule = GetModuleHandle(kernel32);
    free(kernel32);

    final ansi = 'LoadLibraryA'.toANSI();
    final pLoadLibraryA = GetProcAddress(hModule, ansi);
    free(ansi);

    final funcLoadLibraryW = pLoadLibraryA.cast<NativeFunction<ThreadProc>>();
    CreateRemoteThread(
        handle, nullptr, 0, funcLoadLibraryW, remoteBuf, 0, nullptr);

    free(fileName);
    CloseHandle(handle);
  }

  void _updateACL(String path) {
    print("Updating $path");
  }
}

final injectionServiceProvider = Provider<InjectionService>((ref) {
  return InjectionService();
});
