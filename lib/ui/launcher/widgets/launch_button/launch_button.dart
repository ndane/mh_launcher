import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/ui/launcher/widgets/launch_button/launch_button_presenter.dart';

class LaunchButton extends ConsumerWidget {
  const LaunchButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(launchButtonPresenterProvider(ref)).when(
        data: (state) => _launchButtom(state, ref),
        error: (e, st) => const Placeholder(),
        loading: _loadingWidget);
  }

  Widget _launchButtom(LaunchButtonModel state, WidgetRef ref) =>
      ElevatedButton(
          onPressed: () => state.isEnabled
              ? ref
                  .read(launchButtonPresenterProvider(ref).notifier)
                  .launch(false)
              : null,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(300, 64),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          child: Text(state.buttonText));

  Widget _loadingWidget() => Container(
        width: 300,
        height: 64,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child:
            const Center(child: CircularProgressIndicator(color: Colors.black)),
      );
}
