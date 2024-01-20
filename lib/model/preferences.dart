import 'package:freezed_annotation/freezed_annotation.dart';
part 'preferences.freezed.dart';

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    required bool isReshadeEnabled,
    required bool isDefaultReshadeSettingsEnabled,
    required bool isAutoLaunchEnabled,
  }) = _Preferences;
}
