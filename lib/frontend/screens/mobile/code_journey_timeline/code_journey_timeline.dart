import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/code_journey_timeline/widgets/custom_card.dart';
import 'package:serti0x/frontend/screens/widgets/section_title_widget.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

///
/// Code Journey Timeline
/// Rather than a standard "About Me," create an interactive timeline showing your evolution from your first line of code to your current expertise
/// Include pivotal moments, like when you transitioned to mobile development or learned TypeScript
class CodeJourneyTimeline extends ConsumerWidget {
  const CodeJourneyTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: appColours.grey100,
      child: Column(
        children: [
          16.0.sizedBoxHeight,

          SectionTitleWidget(
            sectionTitle: "My Code \nJourney 👨🏾‍💻",
            sectionTitleColour: appColours.purple,
          ).fadeInFromBottom(),

          //!
          24.0.sizedBoxHeight,

          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                "Here is a timeline of how I've evolved from my first line of code to my current expertise"
                    .txt14(
              context: context,
              textAlign: TextAlign.center,
              color: appColours.grey600,
            ),
          ),

          //!
          24.0.sizedBoxHeight,

          CircleAvatar(
            radius: 80.0,
            backgroundColor: appColours.grey300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("my_memoji".png),
            ),
          ),

          //!
          24.0.sizedBoxHeight,

          //! MY CAREER PERSONALITY TRAITS
          Row(
            children: List.generate(1, (_) => const CustomSlantedCard()),
          ),

          //!
          24.0.sizedBoxHeight,
        ],
      ),
    );
  }
}
