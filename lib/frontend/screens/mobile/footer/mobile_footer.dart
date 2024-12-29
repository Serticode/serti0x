import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/footer/controller/footer_controller.dart';
import 'package:serti0x/frontend/screens/mobile/footer/widgets/footer_socials_item_widget.dart';
import 'package:serti0x/frontend/screens/widgets/code_logo_and_developer_name.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MobileFooter extends ConsumerWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const CodeLogoAndDeveloperName(),

        //
        40.0.sizedBoxHeight,

        ///
        /// Footer Socials
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: FooterSocials.values
              .expand(
                (social) sync* {
                  yield const SizedBox(width: 24.0);
                  yield FooterSocialsItemWidget(
                    iconURL: social.iconURL,
                    onPressed: social.onPressed,
                  );
                },
              )
              .skip(1)
              .toList(),
        ),

        16.0.sizedBoxHeight,

        appStrings.contactMeUsingTheAbove.txt14(context: context),

        40.0.sizedBoxHeight,

        appStrings.copyrightStatement.txt12(
          context: context,
          textAlign: TextAlign.center,
        ),

        40.0.sizedBoxHeight,
      ],
    );
  }
}
