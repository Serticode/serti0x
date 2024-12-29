import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/widgets/code_logo.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class BriefingPage extends ConsumerWidget {
  const BriefingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        32.0.sizedBoxHeight,

        //!
        const CodeLogo(),

        16.0.sizedBoxHeight,

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
            style: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
            TextSpan(
              text: "Heyy! 👍 \nI'm ",
              children: [
                TextSpan(
                  text: " Samuel;",
                  style: TextStyle(
                    color: appColours.blue,
                  ),
                ),
                const TextSpan(
                  text: "\nYour  ",
                ),
                TextSpan(
                  text: "“UX focused”\n",
                  style: TextStyle(
                    color: appColours.blue,
                  ),
                ),
                const TextSpan(
                  text: "Software  Engineer 🙈",
                ),
              ],
            ),
          ),
        ),

        8.0.sizedBoxHeight,

        Container(
          width: 160.0,
          height: 4.0,
          decoration: BoxDecoration(
            color: appColours.blue,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),

        24.0.sizedBoxHeight,

        "Dedicated to crafting intuitive and impactful Software solutions."
            .txt16(
          context: context,
          textAlign: TextAlign.center,
          color: appColours.grey600,
        ),

        4.0.sizedBoxHeight,

        "Welcome 💐".txt(
          context: context,
          textAlign: TextAlign.center,
          fontSize: 32.0,
          fontWeight: FontWeight.w700,
        ),

        //!
        40.0.sizedBoxHeight,
      ],
    );
  }
}
