import 'package:freezed_annotation/freezed_annotation.dart';

part 'steam_library.freezed.dart';

@freezed
class SteamLibrary with _$SteamLibrary {
  const factory SteamLibrary({
    required String path,
    required List<String> apps,
  }) = _SteamLibrary;
}
