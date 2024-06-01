import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class Greeting extends ConsumerWidget {
  const Greeting({super.key});
  static const appStrings = AppStrings.instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appStrings.welcome
            .txt(
              context: context,
              fontWeight: FontWeight.w800,
              fontSize: 55,
              height: 0.5,
            )
            .fadeInFromBottom(),

        //!
        appStrings.fromSerticode
            .txt(
              context: context,
              fontWeight: FontWeight.w600,
              fontSize: 35,
            )
            .fadeInFromBottom(
              animationDuration: const Duration(
                milliseconds: 350,
              ),
            ),

        42.0.sizedBoxHeight,

        //!
        Row(
          children: [
            Container(
              width: 30.0.w,
              height: 5.0,
              color: themeBrightness == Brightness.dark
                  ? AppColours.instance.peach
                  : AppColours.instance.blue,
            ),

            21.0.sizedBoxWidth,

            //!
            appStrings.salutation
                .txt(
                  context: context,
                  fontSize: 18,
                )
                .fadeInFromBottom(
                  animationDuration: const Duration(
                    milliseconds: 400,
                  ),
                ),
          ],
        ),
      ],
    ).generalPadding;
  }
}
