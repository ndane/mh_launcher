import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/repositories/preferences.dart';
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
  }) = _LaunchButtonModel;
}

@riverpod
class LaunchButtonPresenter extends _$LaunchButtonPresenter {
  @override
  FutureOr<LaunchButtonModel> build(WidgetRef widgetRef) =>
      const LaunchButtonModel(buttonText: "Launch Game", isEnabled: true);

  FutureOr<void> launch() async {
    final service = ref.read(injectionServiceProvider);
    final isReshadeEnabled = ref.read(isReshadeEnabledProvider);

    state = const AsyncLoading();
    await service.launchAndInjectReshade(isReshadeEnabled);
    state = const AsyncValue.data(LaunchButtonModel(
      buttonText: "Game Running",
      isEnabled: false,
    ));
  }
}
