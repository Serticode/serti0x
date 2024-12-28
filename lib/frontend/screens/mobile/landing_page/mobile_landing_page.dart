import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileLandingPage extends ConsumerStatefulWidget {
  const MobileLandingPage({super.key});

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
