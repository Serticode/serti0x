import 'package:flutter/material.dart';
import 'package:serti0x/frontend/screens/widgets/code_logo.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class CodeLogoAndDeveloperName extends StatelessWidget {
  const CodeLogoAndDeveloperName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CodeLogo(),

        //
        16.0.sizedBoxHeight,

        appStrings.developerName.txt16(
          context: context,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
