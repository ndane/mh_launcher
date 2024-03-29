import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/repositories/preferences.dart';
import 'package:mh_launcher/services/game_locator_service.dart';
import 'package:mh_launcher/services/injection_service.dart';
import 'package:mh_launcher/services/process_monitor_service.dart';
import 'package:mh_launcher/services/reshade_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'launch_button_presenter.g.dart';
part 'launch_button_presenter.freezed.dart';

@freezed
class LaunchButtonModel with _$LaunchButtonModel {
  const factory LaunchButtonModel({
    required String buttonText,
    required bool isEnabled,
    required String gamePath,
    required bool launchPressed,
  }) = _LaunchButtonModel;
}

@riverpod
class LaunchButtonPresenter extends _$LaunchButtonPresenter {
  @override
  FutureOr<LaunchButtonModel> build(WidgetRef widgetRef) async {
    final gameLocatorService = ref.read(gameLocatorServiceProvider);
    final gamePath = await gameLocatorService.findSteamGamePath(582010);

    final processPid =
        ref.watch(monitorProcessPidProvider("MonsterHunterWorld.exe"));
    final processRunning = processPid.value != null;

    if (processRunning && !state.requireValue.launchPressed) {
      await launch(true);
    }

    return LaunchButtonModel(
      buttonText: !processRunning ? "Launch Game" : "Game Running",
      isEnabled: !processRunning,
      gamePath: gamePath,
      launchPressed: false,
    );
  }

  FutureOr<void> launch(bool gameAlreadyRunning) async {
    final injectionService = ref.read(injectionServiceProvider);
    final isReshadeEnabled = ref.read(isReshadeEnabledProvider);
    final isDefaultSettingsEnabled =
        ref.read(isDefaultReshadeSettingsEnabledProvider);

    state = AsyncValue.data(state.requireValue.copyWith(
      launchPressed: true,
    ));

    // Check reshade is installed if enabled
    if (isReshadeEnabled) {
      final gamePath = state.requireValue.gamePath;
      final isReshadeInstalled =
          ref.read(isReshadeInstalledProvider(gamePath)).value;

      // Install if it is not
      if (isReshadeInstalled != true) {
        await ref
            .read(reshadeServiceProvider)
            .installReshade(gamePath, isDefaultSettingsEnabled);
      }
    }

    state = const AsyncLoading();
    if (gameAlreadyRunning) {
      if (isReshadeEnabled) {
        await injectionService.injectReshade();
      }
    } else {
      await injectionService.launchAndInjectReshade(isReshadeEnabled);
    }

    state = AsyncValue.data(state.requireValue.copyWith(
      buttonText: "Game Running",
      isEnabled: false,
    ));
  }
}
