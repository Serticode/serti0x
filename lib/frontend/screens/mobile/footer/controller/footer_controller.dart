import 'package:flutter/material.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';

///
/// The Icons at the base of the footer ...
/// Pressing each item in [FooterSocials] triggers the [onPressed] attribute...
/// Which should be contacting the dev by that means...
/// So [email] the dev or message the dev by [slack]
enum FooterSocials {
  slack,
  email;

  String get iconURL {
    switch (this) {
      case slack:
        return appStrings.slackIcon;
      case email:
        return appStrings.emailIcon;
      default:
        return appStrings.personalCardIcon;
    }
  }

  ///
  /// TODO: @Serticode - Implement this to serve as a means of contacting you.
  VoidCallback get onPressed {
    switch (this) {
      case slack:
        return () {};
      case email:
        return () {};
      default:
        return () {};
    }
  }
}
