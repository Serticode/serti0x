import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class SectionTitleWidget extends ConsumerWidget {
  const SectionTitleWidget({
    required this.sectionTitle,
    required this.sectionTitleColour,
    super.key,
  });

  final String sectionTitle;
  final Color sectionTitleColour;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: sectionTitle
          .txt(
            context: context,
            fontWeight: FontWeight.w800,
            fontSize: 56,
            color: sectionTitleColour,
          )
          .alignCenterLeft(),
    );
  }
}
