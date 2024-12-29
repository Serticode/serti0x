import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/briefing/briefing_page.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/my_endorsements.dart';
import 'package:serti0x/frontend/screens/mobile/footer/mobile_footer.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

final mobileLandingPageControllerNotifierProvider =
    Provider<MobileLandingPageControllerNotifier>((ref) {
  return MobileLandingPageControllerNotifier();
});

class MobileLandingPageControllerNotifier {
  final landingPageSections = <Widget>[
    const BriefingPage(),

    /* //!
          80.0.sizedBoxHeight,

          const CodeJourneyTimeline(),

          //!
          80.0.sizedBoxHeight,

          const TechStack(),

          //!
          80.0.sizedBoxHeight,

          const Projects(),

          //!
          80.0.sizedBoxHeight,

          const DevelopmentPhilosophy(),

          //!
          80.0.sizedBoxHeight,

          const EngineeringChallengesCorner(),

          //!
          80.0.sizedBoxHeight,

          const OpenSourceContributions(),

          //!
          80.0.sizedBoxHeight,

          const TechnicalWriting(),

          //!
          80.0.sizedBoxHeight,

          const ProfessionalGrowth(), */

    //!
    80.0.sizedBoxHeight,

    const MyEndorsements(),

    //!
    80.0.sizedBoxHeight,

    //!
    const MobileFooter(),
  ];
}
