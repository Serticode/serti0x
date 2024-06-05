import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';

class AppDash extends ConsumerWidget {
  const AppDash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Container(
      width: 50.0.w,
      height: 5.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        color: themeBrightness == Brightness.dark
            ? AppColours.instance.peach
            : AppColours.instance.blue,
      ),
    );
  }
}
