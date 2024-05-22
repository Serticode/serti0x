import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/desktop/landing_page/footer/footer.dart';
import 'package:serti0x/frontend/desktop/landing_page/header/header.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Column(
        children: [
          //! HEADER
          Header(),

          Spacer(),

          //! FOOTER
          Footer(),
        ],
      ),
    );
  }
}
