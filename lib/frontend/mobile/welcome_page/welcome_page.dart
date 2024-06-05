//!
// ignore_for_file: deprecated_member_use
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/welcome_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/desktop/welcome_page/widgets/broken_circle.dart';
import 'package:serti0x/frontend/desktop/welcome_page/widgets/greetings.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;

    return Stack(
      children: [
        //!
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),

            //!
            CustomPaint(
              painter: WelcomePageBrokenCirclePainter(
                paintColour: Colors.grey.shade800,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: CircleAvatar(
                  radius: 230,
                  backgroundColor: themeBrightness == Brightness.dark
                      ? AppColours.instance.white.withOpacity(0.1)
                      : AppColours.instance.black.withOpacity(0.1),
                  child: AvatarGlow(
                    glowRadiusFactor: 0.5,
                    glowCount: 1,
                    glowColor: themeBrightness == Brightness.light
                        ? AppColours.instance.blue.withOpacity(0.2)
                        : AppColours.instance.peach.withOpacity(0.2),
                    child: Material(
                      elevation: 80.0,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: themeBrightness == Brightness.light
                            ? AppColours.instance.blue.withOpacity(0.1)
                            : AppColours.instance.peach.withOpacity(0.1),
                        radius: 150.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //!
            21.0.sizedBoxHeight,

            const Spacer(),
          ],
        ).alignBottomCenter(),

        Positioned(
          bottom: 350,
          left: 900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ActionButtons.values
                .map(
                  (button) => "• ${button.pageName}"
                      .txt(
                        context: context,
                        fontSize: 24,
                      )
                      .fadeInFromBottom(
                        animationDuration: Duration(
                          milliseconds:
                              300 * ActionButtons.values.indexOf(button),
                        ),
                      )
                      .onTap(
                    onTap: () async {
                      "BUTTON TAPPED: ${button.pageName}".log();
                    },
                  ),
                )
                .toList(),
          ),
        ),

        const Greeting(),
      ],
    );
  }
}
