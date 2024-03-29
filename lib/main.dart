import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mh_launcher/ui/launcher/launcher_view.dart';
import 'package:mh_launcher/ui/theme/themes.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  if (Platform.isWindows) {
    WindowManager.instance.setMinimumSize(const Size(900, 500));
    WindowManager.instance.setMaximumSize(const Size(900, 500));
    WindowManager.instance.setMaximizable(false);
    WindowManager.instance.setTitle("MH Launcher");
    await WindowManager.instance.setSize(const Size(900, 500));
  }

  runApp(const ProviderScope(child: MHLauncherApp()));
}

class MHLauncherApp extends ConsumerWidget {
  const MHLauncherApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'MH Launcher',
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: const LauncherView(),
    );
  }
}
