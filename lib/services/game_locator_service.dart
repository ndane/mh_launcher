import 'dart:io';

import 'package:mh_launcher/model/steam_library.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:win32_registry/win32_registry.dart';
import 'package:vdf/vdf.dart';
part 'game_locator_service.g.dart';

// TODO: Clean up null situation handling
class GameLocatorService {
  Future<String> findSteamGamePath(int steamId) async {
    final steamPath = _getSteamInstallationPath();
    final library = await _getSteamLibraryForGame(steamPath!, steamId);
    final gameDir = await _getSteamGameDirInLibrary(library!, steamId);
    return gameDir!;
  }

  String? _getSteamInstallationPath() {
    const keyPath = r"Software\Valve\Steam";
    final key = Registry.openPath(RegistryHive.currentUser, path: keyPath);
    final steamPath = key.getValueAsString('SteamPath');
    key.close();
    return steamPath;
  }

  Future<SteamLibrary?> _getSteamLibraryForGame(
      String steamPath, int steamId) async {
    final libraryVdfPath = "$steamPath/steamapps/libraryfolders.vdf";
    final libraries = await _loadLibrariesFromVDF(libraryVdfPath);

    for (final lib in libraries!) {
      if (lib.apps.contains("$steamId")) {
        return lib;
      }
    }

    return null;
  }

  Future<List<SteamLibrary>?> _loadLibrariesFromVDF(String vdfPath) async {
    final file = File(vdfPath);
    if (!(await file.exists())) {
      return null;
    }

    final vdfContent = vdf.decode(await file.readAsString());
    final Map libraryFolders = vdfContent["libraryfolders"];
    final libraries = libraryFolders.values.toList();

    List<SteamLibrary> steamLibraries = [];
    for (final lib in libraries) {
      final path = lib["path"];
      final Map apps = lib["apps"];
      final appIds = apps.keys.toList().cast<String>();
      steamLibraries.add(SteamLibrary(path: path, apps: appIds));
    }

    return steamLibraries;
  }

  Future<String?> _getSteamGameDirInLibrary(
      SteamLibrary library, int steamId) async {
    final manifestPath = "${library.path}\\steamapps\\appmanifest_$steamId.acf";
    final file = File(manifestPath);
    if (!(await file.exists())) {
      return null;
    }

    final vdfContent = vdf.decode(await file.readAsString());
    return "${library.path}\\steamapps\\common\\${vdfContent["AppState"]["installdir"]}";
  }
}

@riverpod
GameLocatorService gameLocatorService(GameLocatorServiceRef ref) {
  return GameLocatorService();
}

@riverpod
Future<String> steamGameLocation(SteamGameLocationRef ref, int steamId) async {
  final locatorService = ref.watch(gameLocatorServiceProvider);
  return await locatorService.findSteamGamePath(steamId);
}
