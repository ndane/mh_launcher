import 'dart:io';

import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'reshade_service.g.dart';

class ReshadeService {
  static const _reshadeFileNames = [
    "ReShade64.dll",
    "ReShadePreset.ini",
    "ReShade.ini"
  ];

  static const _reshadeDirs = ["reshade-shaders"];

  Future<bool> isReshadeInstalled(String path) async {
    for (final fileName in _reshadeFileNames) {
      final file = File("$path/$fileName");
      if (!(await file.exists())) {
        return false;
      }
    }

    for (final dirName in _reshadeDirs) {
      final dir = Directory("$path/$dirName");
      if (!(await dir.exists())) {
        return false;
      }
    }

    return true;
  }

  Future<void> installReshade(String path, bool includeSettings) async {
    for (final file in _reshadeFileNames) {
      if (!includeSettings && file == "ReShadePreset.ini") {
        continue;
      }

      final bytes = await rootBundle.load("assets/reshade/$file");
      await _writeToFile(bytes, '$path/$file');
    }

    // Copy shaders
    final shaderDir = Directory("$path/reshade-shaders");
    if (await shaderDir.exists() != true) {
      await shaderDir.create();
    }

    final zip = await rootBundle.load("assets/reshade/reshade-shaders.zip");
    final archive = ZipDecoder().decodeBuffer(InputStream(zip));

    for (final file in archive) {
      if (file.isFile) {
        final data = file.content as List<int>;
        File("$path/${file.name}")
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory('$path/${file.name}').create(recursive: true);
      }
    }
  }

  Future<void> _writeToFile(ByteData data, String path) {
    final buffer = data.buffer;
    return File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }
}

@riverpod
ReshadeService reshadeService(ReshadeServiceRef ref) {
  return ReshadeService();
}

@riverpod
Future<bool> isReshadeInstalled(IsReshadeInstalledRef ref, String path) async {
  return await ref.watch(reshadeServiceProvider).isReshadeInstalled(path);
}

@riverpod
Future<void> installReshade(
    InstallReshadeRef ref, String path, bool includeSettings) async {
  await ref.watch(reshadeServiceProvider).installReshade(path, includeSettings);
}
