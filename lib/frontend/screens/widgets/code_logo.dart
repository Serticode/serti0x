// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/app_theme.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class CodeLogo extends ConsumerWidget {
  const CodeLogo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);

    return CircleAvatar(
      radius: 32.0,
      backgroundColor: switch (theme == appTheme.darkTheme) {
        true => appColours.secondaryBlack,
        false => appColours.grey700,
      },
      child: CircleAvatar(
        radius: 24.0,
        backgroundColor: switch (theme == appTheme.darkTheme) {
          true => appColours.grey700,
          false => appColours.white,
        },
        child: SvgPicture.asset(
          appStrings.codeLogo.svg,
          color: switch (theme == appTheme.darkTheme) {
            true => appColours.white,
            false => appColours.fabBGColourDark,
          },
        ),
      ),
    );
  }
}
