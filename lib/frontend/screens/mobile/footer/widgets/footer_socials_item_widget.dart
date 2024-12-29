// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/app_theme.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class FooterSocialsItemWidget extends ConsumerWidget {
  const FooterSocialsItemWidget({
    required this.iconURL,
    required this.onPressed,
    super.key,
  });

  final String iconURL;
  final VoidCallback onPressed;

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
          iconURL.svg,
          color: switch (theme == appTheme.darkTheme) {
            true => appColours.white,
            false => appColours.fabBGColourDark,
          },
        ),
      ),
    ).onTap(
      onTap: onPressed,
    );
  }
}
