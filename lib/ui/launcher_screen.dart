import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/services/injection_service.dart';

class LauncherScreen extends ConsumerWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final injectionService = ref.watch(injectionServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('MH Launcher')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => injectionService.launchAndInjectReshade(),
            child: const Text("Launch Game")),
      ),
    );
  }
}
