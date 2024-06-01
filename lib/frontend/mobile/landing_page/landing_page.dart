import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';

class MobileLandingPage extends ConsumerStatefulWidget {
  const MobileLandingPage({super.key});
  static const appStrings = AppStrings.instance;

  @override
  ConsumerState<MobileLandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<MobileLandingPage>
    with TickerProviderStateMixin {
  //!
  @override
  void initState() {
    super.initState();
    ref.read(landingPageController.notifier).initTabController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;
    final pageController =
        ref.watch(landingPageController.notifier).pageViewController;

    return Scaffold(
      body: Container(
        color: Colors.purple,
        /* decoration: BoxDecoration(
          image: themeBrightness == Brightness.dark
              ? DecorationImage(
                  image: AssetImage(
                    LandingPage.appStrings.welcomePageBackdrop,
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )
              : null,
        ), */
        /* child: Column(
          children: [
            //! HEADER
            const Header(),

            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return AppPages.values.elementAt(index).screen;
                },
              ),
            ),

            //! FOOTER
            const Footer(),
          ],
        ), */
      ),
    );
  }
}
