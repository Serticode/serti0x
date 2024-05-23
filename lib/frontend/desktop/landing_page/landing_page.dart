import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/desktop/landing_page/footer/footer.dart';
import 'package:serti0x/frontend/desktop/landing_page/header/header.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});
  static const appStrings = AppStrings.instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(landingPageController);
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: themeBrightness == Brightness.dark
              ? DecorationImage(
                  image: AssetImage(
                    appStrings.welcomePageBackdrop,
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )
              : null,
        ),
        child: Column(
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
      ),
    );
  }
}
