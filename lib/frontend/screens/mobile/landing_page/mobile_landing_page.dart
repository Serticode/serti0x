import 'package:flutter/material.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/my_endorsements.dart';
import 'package:serti0x/frontend/screens/mobile/footer/mobile_footer.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MobileLandingPage extends StatelessWidget {
  const MobileLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
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

      //!
      /// Closed out for now, might support light mode later
      /* floatingActionButton: FloatingActionButton(
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
      ), */
    );
  }
}
