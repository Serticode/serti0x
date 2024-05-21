//! HERE IN LIES MY PORTFOLIO
//! THERE ARE SOME GROUND RULES

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/desktop/landing_page/landing_page.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';

Future<void> main() async {
  runApp(
    const ProviderScope(
      child: Serti0x(),
    ),
  );
}

class Serti0x extends ConsumerWidget {
  const Serti0x({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: AppStrings.instance.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
