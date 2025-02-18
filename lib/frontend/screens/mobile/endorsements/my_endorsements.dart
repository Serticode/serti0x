import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/my_endorsement_carousel.dart';
import 'package:serti0x/frontend/screens/widgets/section_title_widget.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MyEndorsements extends ConsumerWidget {
  const MyEndorsements({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SectionTitleWidget(
          sectionTitle: "Endorsements.",
          sectionTitleColour: appColours.peach.withOpacity(0.3),
        ).fadeInFromBottom(),

        8.0.sizedBoxHeight,

        //!
        "What some of his peers say about him".txt12(
          context: context,
          color: appColours.grey600,
        ),

        //!
        8.0.sizedBoxHeight,

        //!
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: "“"
              .txt(
                context: context,
                fontSize: 56.0,
                fontWeight: FontWeight.w700,
                color: appColours.peach,
              )
              .alignCenterLeft(),
        ),

        const MyEndorsementCarousel(),

        //!
        Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: "”"
              .txt(
                context: context,
                fontSize: 56.0,
                fontWeight: FontWeight.w700,
                color: appColours.peach,
              )
              .alignCenterRight(),
        ),
      ],
    );
  }
}
