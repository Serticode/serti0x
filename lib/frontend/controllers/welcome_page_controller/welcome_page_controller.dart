// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:serti0x/frontend/controllers/welcome_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class WelcomePageActions {
  const WelcomePageActions();
  static const appStringsInstance = AppStrings.instance;

  //!
  void _downloadResume() {
    html.window.open(appStringsInstance.resumeURL, '_blank');

    Future.delayed(
      const Duration(seconds: 7),
      () {
        html.window.close();
      },
    );
  }

  //!
  void _openGitHubLink() {
    html.window.open(appStringsInstance.githubURL, '_blank');
  }

  //!
  void _contactMe({
    required void Function() navigateToContactMe,
  }) =>
      //!TODO: @Serticode - NAVIGATE TO CONTACT ME
      navigateToContactMe();

  //!
  void onButtonPressed({
    required int buttonIndex,
    required void Function() navigateToContactMe,
  }) {
    switch (buttonIndex) {
      case 0:
        _downloadResume();
        break;
      case 1:
        _openGitHubLink();
        break;
      case 2:
        _contactMe(
          navigateToContactMe: navigateToContactMe,
        );
        break;
      default:
        "${ActionButtons.values.elementAt(buttonIndex).pageName} PRESSED".log();
    }
  }

  //!
  void showTooltip({
    required bool isHovering,
    required String message,
  }) {
    final overlayKey = GlobalKey();

    if (isHovering) {
      Overlay.of(overlayKey.currentContext!).insert(
        OverlayEntry(
          builder: (context) => Positioned(
            top: 0,
            left: 0,
            child: Material(
              color: Colors.transparent,
              elevation: 40,
              child: Tooltip(
                message: message,
                key: overlayKey,
                child: const SizedBox.shrink(),
              ),
            ),
          ),
        ),
      );
    } else {
      overlayKey.currentState?.context.findRenderObject()?.detach();
    }
  }
}
