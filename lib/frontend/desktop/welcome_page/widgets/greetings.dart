import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/desktop/welcome_page/widgets/app_dash.dart';
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
    const appColoursInstance = AppColours.instance;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appStrings.welcome
              .txt(
                context: context,
                fontWeight: FontWeight.w800,
                fontSize: 72,
                color: themeBrightness == Brightness.dark
                    ? appColoursInstance.peach
                    : appColoursInstance.blue,
              )
              .fadeInFromBottom(),

          //!
          appStrings.fromSerticode
              .txt(
                context: context,
                fontWeight: FontWeight.w600,
                fontSize: 52,
              )
              .fadeInFromBottom(
                animationDuration: const Duration(
                  milliseconds: 350,
                ),
              ),

          22.0.sizedBoxHeight,

          //!
          Row(
            children: [
              const AppDash(),

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
      ).generalPadding,
    );
  }
}
