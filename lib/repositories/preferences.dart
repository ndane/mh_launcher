import 'package:mh_launcher/model/preferences.dart';
import 'package:mh_launcher/providers/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'preferences.g.dart';

@riverpod
class PreferencesRepository extends _$PreferencesRepository {
  @override
  FutureOr<Preferences> build() async {
    return Preferences(
      isReshadeEnabled: isReshadeEnabled(),
      isDefaultReshadeSettingsEnabled: isDefaultReshadeSettingsEnabled(),
      isAutoLaunchEnabled: isAutoLaunchEnabled(),
    );
  }

  bool isReshadeEnabled() {
    final sharedPrefs = ref.watch(sharedPreferencesProvider).value;
    return sharedPrefs?.getBool('reshade') ?? true;
  }

  Future<void> setReshadeEnabled(bool enabled) async {
    await _writeBool('reshade', enabled);

    final newState = state.value?.copyWith(isReshadeEnabled: enabled);
    state = AsyncValue.data(newState ?? await build());
  }

  bool isDefaultReshadeSettingsEnabled() {
    final sharedPrefs = ref.watch(sharedPreferencesProvider).value;
    return sharedPrefs?.getBool('reshade-default') ?? true;
  }

  Future<void> setDefaultReshadeSettingsEnabled(bool enabled) async {
    await _writeBool('reshade-default', enabled);

    final newState =
        state.value?.copyWith(isDefaultReshadeSettingsEnabled: enabled);
    state = AsyncValue.data(newState ?? await build());
  }

  bool isAutoLaunchEnabled() {
    final sharedPrefs = ref.watch(sharedPreferencesProvider).value;
    return sharedPrefs?.getBool('autolaunch') ?? false;
  }

  Future<void> setAutoLaunchEnabled(bool enabled) async {
    await _writeBool('autolaunch', enabled);

    final newState = state.value?.copyWith(isAutoLaunchEnabled: enabled);
    state = AsyncValue.data(newState ?? await build());
  }

  Future<void> _writeBool(String key, bool boolean) async {
    final sharedPrefs = ref.read(sharedPreferencesProvider).value;

    state = const AsyncLoading();
    await sharedPrefs?.setBool(key, boolean);
  }
}

@riverpod
bool isReshadeEnabled(IsReshadeEnabledRef ref) {
  return ref.read(preferencesRepositoryProvider).value?.isReshadeEnabled ??
      false;
}

@riverpod
bool isDefaultReshadeSettingsEnabled(IsDefaultReshadeSettingsEnabledRef ref) {
  return ref
          .read(preferencesRepositoryProvider)
          .value
          ?.isDefaultReshadeSettingsEnabled ??
      true;
}
