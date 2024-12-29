import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/briefing/briefing_page.dart';
import 'package:serti0x/frontend/screens/mobile/code_journey_timeline/code_journey_timeline.dart';
import 'package:serti0x/frontend/screens/mobile/development_philosophy/development_philosophy.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/my_endorsements.dart';
import 'package:serti0x/frontend/screens/mobile/engineering_challenges/engineering_challenges_corner.dart';
import 'package:serti0x/frontend/screens/mobile/landing_page/controller/mobile_landing_page_controller.dart';
import 'package:serti0x/frontend/screens/mobile/open_source_contributions/open_source_contributions.dart';
import 'package:serti0x/frontend/screens/mobile/professional_growth/professional_growth.dart';
import 'package:serti0x/frontend/screens/mobile/projects/projects.dart';
import 'package:serti0x/frontend/screens/mobile/tech_stack/tech_stack.dart';
import 'package:serti0x/frontend/screens/mobile/technical_writing/technical_writing.dart';

///
/// These are the details of how the layout should be.
/// 1. We have a [BriefingPage] section, that just gives a small talk about
/// [@Serticode]... It's basically a welcome page.
/// 2. We have a [CodeJourneyTimeline] ... An interactive timeline showing your evolution from first line of code to current expertise.
/// 3. [TechStack] section. Includes specific aspects like "State Management in Flutter" or "TypeScript Type System Mastery"
/// Showing real examples of problems solved using these technologies / techniques.
/// 4. [Projects] ... Project Showcase with Problem-Solution Focus
/// For each project, highlight: The specific business problem it solved; Technical challenges overcome and Performance improvements achieved
/// 5. [DevelopmentPhilosophy] ... My approach to clean code, how i handle technical debt ...
/// Testing strategies, views on mobile app architecture and others.
/// 6. [EngineeringChallengesCorner] ... Document interesting bugs solved; complex implementation decisions
/// and Include performance optimization case studies.
/// 7. [OpenSourceContributions] ...Well, the name speaks for itself, doesn't it??
/// 8. [TechnicalWriting] ... Same as above??
/// 9. [ProfessionalGrowth] ??? Again ??
/// 10 [MyEndorsements] ... Basically, what people have to say about my work ethic, career and myself as a person.
///

class MobileLandingPage extends StatelessWidget {
  const MobileLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(
      builder: (context, ref, child) {
        final listOfSections = ref
            .read(mobileLandingPageControllerNotifierProvider)
            .landingPageSections;

        return ListView.builder(
          itemCount: listOfSections.length,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return listOfSections.elementAt(index);
          },
        );
      },
    )

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
