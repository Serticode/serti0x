import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/widgets/code_logo.dart';
import 'package:serti0x/frontend/screens/widgets/section_title_widget.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class BriefingPage extends ConsumerWidget {
  const BriefingPage({super.key});

  final textStyle = const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        32.0.sizedBoxHeight,

        //!
        const CodeLogo(),

        16.0.sizedBoxHeight,

        SectionTitleWidget(
          sectionTitle: "Welcome 💐",
          sectionTitleColour: appColours.bigTextWhite,
        ).fadeInFromBottom(),

        //!
        40.0.sizedBoxHeight,

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              "Heyy!  👍"
                  .txt(
                    context: context,
                    textStyle: textStyle,
                  )
                  .fadeInFromBottom(),

              //!
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "I'm  ".txt(
                    context: context,
                    textStyle: textStyle,
                  ),
                  "Samuel;".txt(
                    context: context,
                    textStyle: textStyle.copyWith(
                      color: appColours.blue,
                    ),
                  ),
                ],
              ).fadeInFromBottom(
                animationDuration: const Duration(
                  milliseconds: 400,
                ),
              ),

              //!
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Your  ".txt(
                    context: context,
                    textStyle: textStyle,
                  ),
                  "“UX focused”".txt(
                    context: context,
                    textStyle: textStyle.copyWith(
                      color: appColours.blue,
                    ),
                  ),
                ],
              ).fadeInFromBottom(
                animationDuration: const Duration(
                  milliseconds: 500,
                ),
              ),

              //!
              "Software  Engineer 🙈"
                  .txt(
                    context: context,
                    textStyle: textStyle,
                  )
                  .fadeInFromBottom(
                    animationDuration: const Duration(
                      milliseconds: 600,
                    ),
                  ),
            ],
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

        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              "Dedicated to crafting intuitive and impactful Software solutions."
                  .txt16(
            context: context,
            textAlign: TextAlign.center,
            color: appColours.grey600,
          ),
        ),

        40.0.sizedBoxHeight,
      ],
    ).fadeIn();
  }
}
