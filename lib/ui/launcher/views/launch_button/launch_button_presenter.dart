import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/services/injection_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'launch_button_presenter.g.dart';
part 'launch_button_presenter.freezed.dart';

@freezed
class LaunchButtonModel with _$LaunchButtonModel {
  const factory LaunchButtonModel({
    required String buttonText,
  }) = _LaunchButtonModel;
}

@riverpod
class LaunchButtonPresenter extends _$LaunchButtonPresenter {
  @override
  FutureOr<LaunchButtonModel> build(WidgetRef widgetRef) =>
      const LaunchButtonModel(buttonText: "Launch Game");

  FutureOr<void> launch() async {
    final service = ref.read(injectionServiceProvider);
    state = const AsyncLoading();
    //await service.launchAndInjectReshade(true);
    //state =
    //const AsyncValue.data(LaunchButtonModel(buttonText: "Game Running"));
  }
}
