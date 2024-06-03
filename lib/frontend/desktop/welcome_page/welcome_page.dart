//!
// ignore_for_file: deprecated_member_use
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/welcome_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/controllers/welcome_page_controller/controller_provider.dart';
import 'package:serti0x/frontend/desktop/welcome_page/widgets/app_dash.dart';
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
    const appColoursInstance = AppColours.instance;

    return Stack(
      children: [
        //!
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //!
            CustomPaint(
              painter: WelcomePageBrokenCirclePainter(
                paintColour: Colors.grey.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: CircleAvatar(
                  radius: 230,
                  backgroundColor: themeBrightness == Brightness.dark
                      ? appColoursInstance.white.withOpacity(0.05)
                      : appColoursInstance.black.withOpacity(0.05),
                  child: AvatarGlow(
                    glowRadiusFactor: 0.5,
                    glowCount: 1,
                    glowColor: themeBrightness == Brightness.light
                        ? appColoursInstance.blue.withOpacity(0.05)
                        : appColoursInstance.peach.withOpacity(0.05),
                    child: Material(
                      elevation: 80.0,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: themeBrightness == Brightness.light
                            ? appColoursInstance.blue.withOpacity(0.05)
                            : appColoursInstance.peach.withOpacity(0.05),
                        radius: 150.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            80.0.sizedBoxWidth,

            //!
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                220.0.sizedBoxHeight,

                //!
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ActionButtons.values
                        .map(
                          (button) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const AppDash(),

                                //!
                                "       ${button.pageName}".txt(
                                  context: context,
                                  fontSize: 18,
                                )
                              ],
                            )
                                .fadeInFromBottom(
                              delay: const Duration(
                                milliseconds: 800,
                              ),
                              animationDuration: Duration(
                                milliseconds:
                                    300 * ActionButtons.values.indexOf(button),
                              ),
                            )
                                .onTap(
                              onTap: () async {
                                final index =
                                    ActionButtons.values.indexOf(button);

                                ref
                                    .read(
                                      welcomePageActionsProvider,
                                    )
                                    .onButtonPressed(
                                      buttonIndex: index,
                                      navigateToContactMe: () {
                                        "NAVIGATE TO CONTACT ME PRESSED".log();
                                      },
                                    );
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ).alignBottomCenter(),

        const Greeting(),
      ],
    );
  }
}
