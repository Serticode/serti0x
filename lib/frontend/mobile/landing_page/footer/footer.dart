// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/desktop/landing_page/footer/landing_page_controls.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});
  static const appStrings = AppStrings.instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Row(
      children: [
        appStrings.developerName.txt(
          context: context,
          fontSize: 18.0,
        ),

        //!
        const Spacer(),

        const Expanded(child: LandingPageControls()),

        //!
        const Spacer(),

        //!
        SvgPicture.asset(
          themeBrightness == Brightness.light
              ? appStrings.moon.svg
              : appStrings.sun.svg,
          color: themeBrightness == Brightness.light
              ? null
              : AppColours.instance.white,
        ).onTap(
          onTap: () async =>
              await ref.read(themeNotifierProvider.notifier).toggleTheme(),
        )
      ],
    ).generalPadding;
  }
}
