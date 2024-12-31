import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/footer/controller/footer_controller.dart';
import 'package:serti0x/frontend/screens/mobile/footer/widgets/footer_socials_item_widget.dart';
import 'package:serti0x/frontend/screens/widgets/code_logo_and_developer_name.dart';
import 'package:serti0x/frontend/screens/widgets/section_title_widget.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MobileFooter extends ConsumerWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        //
        48.0.sizedBoxHeight,

        SectionTitleWidget(
          sectionTitle: "Footer 🤗",
          sectionTitleColour: appColours.bigTextWhite,
        ).fadeInFromBottom(),

        //
        48.0.sizedBoxHeight,

        const CodeLogoAndDeveloperName(),

        //
        48.0.sizedBoxHeight,

        //!
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: FooterSocials.values.map(
            (social) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FooterSocialsItemWidget(
                  iconURL: social.iconURL,
                  onPressed: social.onPressed,
                ),
              );
            },
          ).toList(),
        ),

        16.0.sizedBoxHeight,

        appStrings.contactMeUsingTheAbove.txt12(context: context),

        48.0.sizedBoxHeight,

        appStrings.copyrightStatement.txt(
          context: context,
          textAlign: TextAlign.center,
        ),

        56.0.sizedBoxHeight,
      ],
    );
  }
}
