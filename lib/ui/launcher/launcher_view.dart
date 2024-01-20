import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/repositories/preferences.dart';
import 'package:mh_launcher/ui/launcher/widgets/launch_button/launch_button.dart';

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
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Center(
            child: _optionList(ref),
          ),
        ),
      ),
    );
  }

  Widget _optionList(WidgetRef ref) {
    final preferences = ref.watch(preferencesRepositoryProvider);

    return preferences.when(
        error: (e, st) => const Placeholder(),
        loading: () => const Placeholder(),
        data: (preferences) => IntrinsicHeight(
              child: IntrinsicWidth(
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(180),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                    ),
                  ], borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          title: const Text("ReShade Enabled"),
                          dense: true,
                          leading: Checkbox(
                              value: preferences.isReshadeEnabled,
                              onChanged: (enabled) => ref
                                  .read(preferencesRepositoryProvider.notifier)
                                  .setReshadeEnabled(enabled ?? false)),
                        ),
                        ListTile(
                          title:
                              const Text("Recommended ReShade settings (SMAA)"),
                          dense: true,
                          leading: Checkbox(
                              value:
                                  preferences.isDefaultReshadeSettingsEnabled,
                              onChanged: (enabled) => ref
                                  .read(preferencesRepositoryProvider.notifier)
                                  .setDefaultReshadeSettingsEnabled(
                                      enabled ?? false)),
                        ),
                        ListTile(
                          title: const Text("Launch game automatically"),
                          dense: true,
                          leading: Checkbox(
                              value: preferences.isAutoLaunchEnabled,
                              onChanged: (enabled) => ref
                                  .read(preferencesRepositoryProvider.notifier)
                                  .setAutoLaunchEnabled(enabled ?? false)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: LaunchButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
