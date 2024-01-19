import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/repositories/preferences.dart';
import 'package:mh_launcher/services/game_locator_service.dart';
import 'package:mh_launcher/services/injection_service.dart';
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
  }) = _LaunchButtonModel;
}

@riverpod
class LaunchButtonPresenter extends _$LaunchButtonPresenter {
  @override
  FutureOr<LaunchButtonModel> build(WidgetRef widgetRef) async {
    final gameLocatorService = ref.read(gameLocatorServiceProvider);
    final gamePath = await gameLocatorService.findSteamGamePath(582010);
    return LaunchButtonModel(
      buttonText: "Launch Game",
      isEnabled: true,
      gamePath: gamePath,
    );
  }

  FutureOr<void> launch() async {
    final service = ref.read(injectionServiceProvider);
    final isReshadeEnabled = ref.read(isReshadeEnabledProvider);

    state = const AsyncLoading();
    await service.launchAndInjectReshade(isReshadeEnabled);
    state = AsyncValue.data(state.requireValue.copyWith(
      buttonText: "Game Running",
      isEnabled: false,
    ));
  }
}
