import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class LandingPageControls extends ConsumerStatefulWidget {
  const LandingPageControls({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LandingPageControlsState();
}

class _LandingPageControlsState extends ConsumerState<LandingPageControls>
    with TickerProviderStateMixin {
  late TabController _mainTabController;

  @override
  void initState() {
    super.initState();
    _mainTabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  void dispose() {
    _mainTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return TabBar(
      controller: _mainTabController,
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
      indicatorColor: themeBrightness == Brightness.dark
          ? AppColours.instance.peach
          : AppColours.instance.blue,
      splashFactory: NoSplash.splashFactory,
      splashBorderRadius: BorderRadius.zero,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      indicatorWeight: 3.0,
      onTap: (index) {
        ref.read(landingPageController.notifier).setPage(
              currentPage: AppPages.values.elementAt(index),
            );

        _mainTabController.animateTo(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }
}
