import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/app_theme.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class EndorsementUserImage extends ConsumerWidget {
  const EndorsementUserImage({
    required this.endorsementUserImageURL,
    super.key,
  });

  final String endorsementUserImageURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);

    return CircleAvatar(
      radius: 56.0,
      backgroundColor: switch (theme == appTheme.darkTheme) {
        true => appColours.secondaryBlack,
        false => appColours.grey700,
      },
      child: CircleAvatar(
        radius: 48.0,
        backgroundColor: switch (theme == appTheme.darkTheme) {
          true => appColours.grey700,
          false => appColours.white,
        },
        child: Image.asset(
          endorsementUserImageURL.png,
        ),
      ),
    );
  }
}
