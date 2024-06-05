import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class LandingPageControls extends ConsumerWidget {
  const LandingPageControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;
    final tabController =
        ref.watch(landingPageController.notifier).mainTabController;
    final pageController =
        ref.watch(landingPageController.notifier).pageViewController;

    return TabBar(
      controller: tabController,
      tabs: [
        Tab(
          child: AppPages.blog.pageName.txt14(context: context),
        ),
        Tab(
          child: AppPages.welcome.pageName.txt14(context: context),
        ),
        Tab(
          child: AppPages.works.pageName.txt14(context: context),
        ),
      ],
      splashFactory: NoSplash.splashFactory,
      splashBorderRadius: BorderRadius.zero,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      indicatorWeight: 3.0,
      indicatorColor: themeBrightness == Brightness.dark
          ? AppColours.instance.peach
          : AppColours.instance.blue,

      //!
      onTap: (index) async {
        await pageController.animateToPage(
          index,
          duration: const Duration(
            milliseconds: 1200,
          ),
          curve: Curves.fastOutSlowIn,
        );

        tabController.animateTo(
          index,
          duration: const Duration(
            milliseconds: 1200,
          ),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }
}
