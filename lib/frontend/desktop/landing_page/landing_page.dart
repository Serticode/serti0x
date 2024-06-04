import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/desktop/landing_page/footer/footer.dart';
import 'package:serti0x/frontend/desktop/landing_page/header/header.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});
  static const appStrings = AppStrings.instance;

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage>
    with TickerProviderStateMixin {
  //!
  @override
  void initState() {
    super.initState();
    ref.read(landingPageController.notifier).initTabController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final pageController =
        ref.watch(landingPageController.notifier).pageViewController;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Header(),
      ),

      //!
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return AppPages.values.elementAt(index).screen;
        },
      ),

      bottomNavigationBar: const Footer(),
    );
  }
}
