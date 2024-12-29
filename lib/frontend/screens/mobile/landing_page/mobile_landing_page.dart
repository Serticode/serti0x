// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/my_endorsements.dart';
import 'package:serti0x/frontend/screens/mobile/footer/mobile_footer.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/app_theme.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MobileLandingPage extends ConsumerWidget {
  const MobileLandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //!
            80.0.sizedBoxHeight,

            const MyEndorsements(),

            //!
            80.0.sizedBoxHeight,

            //!
            const MobileFooter(),
          ],
        ),
      ),

      //!
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await themeNotifier.toggleTheme(),
        child: SvgPicture.asset(
          switch (theme == appTheme.darkTheme) {
            true => appStrings.sun.svg,
            false => appStrings.moon.svg,
          },
          color: switch (theme == appTheme.darkTheme) {
            true => appColours.white,
            false => appColours.fabBGColourDark,
          },
        ),
      ),
    );
  }
}
