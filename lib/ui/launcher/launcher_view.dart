import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/ui/launcher/views/launch_button/launch_button.dart';

// TODO: Make the default value read from settings on disk
final reshadeEnabledProvider = StateProvider<bool>((ref) => true);
final autoLaunchEnabledProvider = StateProvider<bool>((ref) => false);

class LauncherView extends ConsumerWidget {
  const LauncherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("MH Launcher")),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
          child: Center(
            child: _optionList(ref),
          ),
        ),
      ),
    );
  }

  Widget _optionList(WidgetRef ref) {
    final reshadeEnabled = ref.watch(reshadeEnabledProvider);
    final autoLaunchEnabled = ref.watch(autoLaunchEnabledProvider);

    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: const Text("ReShade Enabled"),
            dense: true,
            leading: Checkbox(
                value: reshadeEnabled,
                onChanged: (enabled) =>
                    ref.read(reshadeEnabledProvider.notifier).state = enabled!),
          ),
          ListTile(
            title: const Text("Launch game automatically"),
            dense: true,
            leading: Checkbox(
                value: autoLaunchEnabled,
                onChanged: (enabled) => ref
                    .read(autoLaunchEnabledProvider.notifier)
                    .state = enabled!),
          ),
          const LaunchButton(),
        ],
      ),
    );
  }
}
