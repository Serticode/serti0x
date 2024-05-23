import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/desktop/landing_page/footer/footer.dart';
import 'package:serti0x/frontend/desktop/landing_page/header/header.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(landingPageController);

    return Scaffold(
      body: Column(
        children: [
          //! HEADER
          const Header(),

          Expanded(
            child: PageView.builder(
              padEnds: false,
              itemBuilder: (context, index) {
                return currentPage.screen;
              },
            ),
          ),

          //! FOOTER
          const Footer(),
        ],
      ),
    );
  }
}
