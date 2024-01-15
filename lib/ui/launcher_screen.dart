import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/services/injection_service.dart';

final reshadeEnabledProvider = StateProvider<bool>((ref) => true);

class LauncherScreen extends ConsumerWidget {
  const LauncherScreen({super.key});

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
    final injectionService = ref.watch(injectionServiceProvider);
    final reshadeEnabled = ref.watch(reshadeEnabledProvider);

    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: const Text("ReShade Enabled"),
            leading: Checkbox(
                value: reshadeEnabled,
                onChanged: (enabled) =>
                    ref.read(reshadeEnabledProvider.notifier).state = enabled!),
          ),
          ElevatedButton(
              onPressed: () =>
                  injectionService.launchAndInjectReshade(reshadeEnabled),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 64),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              child: const Text("Launch Game")),
        ],
      ),
    );
  }
}
