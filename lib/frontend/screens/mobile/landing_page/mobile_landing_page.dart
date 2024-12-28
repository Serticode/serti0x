import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';

class MobileLandingPage extends ConsumerStatefulWidget {
  const MobileLandingPage({super.key});
  static const appStrings = AppStrings.instance;

  @override
  ConsumerState<MobileLandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<MobileLandingPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
