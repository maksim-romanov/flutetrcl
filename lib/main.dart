import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/core/theme/app_theme.dart';

import './navigation/navigation.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(theme: AppTheme.lightTheme, routerConfig: AppNavigation.config);
  }
}
