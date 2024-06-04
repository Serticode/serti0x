// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/desktop/landing_page/widgets/broken_circle.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class Header extends ConsumerWidget {
  const Header({super.key});
  static const appStrings = AppStrings.instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Row(
      children: [
        //! SPACE FILLER TO KEEP ITEMS ALIGNED
        "         ".txt(
          context: context,
          fontSize: 18.0,
        ),

        const Spacer(),

        //!

        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.transparent,
          child: CustomPaint(
            painter: BrokenCirclePainter(
              paintColour: themeBrightness == Brightness.light
                  ? AppColours.instance.blue
                  : AppColours.instance.peach,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                appStrings.codeLogo.svg,
                color: themeBrightness == Brightness.light
                    ? null
                    : AppColours.instance.white,
              ).fadeInFromBottom(),
            ),
          ),
        ),

        const Spacer(),
      ],
    );
  }
}
