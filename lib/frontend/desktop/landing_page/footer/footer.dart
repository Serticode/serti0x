// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider);

    return Row(
      children: [
        AppStrings.instance.developerName.txt(
          context: context,
          fontSize: 18.0,
        ),

        //!
        const Spacer(),

        "Blog".txt14(context: context),
        const SizedBox(width: 50),
        "Welcome".txt14(context: context),
        const SizedBox(width: 50),
        "Works".txt14(context: context),

        //!
        const Spacer(),

        //!
        SvgPicture.asset(
          themeBrightness.brightness == Brightness.light
              ? AppStrings.instance.moon.svg
              : AppStrings.instance.sun.svg,
          color: themeBrightness.brightness == Brightness.light
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
