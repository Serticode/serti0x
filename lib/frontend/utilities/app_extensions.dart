//! THIS FILE CONTAINS HOPEFULLY, ALL EXTENSIONS USED IN THE APP.
import "dart:developer" as dev_tools show log;
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:intl/intl.dart";
import "package:serti0x/frontend/shared/app_colours.dart";
import "package:serti0x/frontend/shared/app_strings.dart";

//!
//! LOG EXTENSION - THIS HELPS TO CALL A .log() ON ANY OBJECT
//! checks if the app in is debug mode first.
extension Log on Object {
  void log() {
    if (kDebugMode) {
      dev_tools.log(
        toString(),
      );
    }
  }
}

//!
//! EXTENSION ON WIDGET
//! HELPS TO CALL A .dismissKeyboard ON A WIDGET
extension DismissKeyboard on Widget {
  void dismissKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}

//!
//! EXTENSIONS ON TRANSFORM
extension TransformExtension on Widget {
  Widget transformToScale({
    required double scale,
  }) =>
      Transform.scale(
        scale: scale,
        child: this,
      );
}

//!
//! IGNORE POINTER
extension IgnorePointerExtension on Widget {
  ignorePointer({
    required bool isLoading,
  }) =>
      IgnorePointer(
        ignoring: isLoading,
        child: this,
      );
}

//!
//! EXTENSIONS ON NUMBER
extension WidgetExtensions on double {
  Widget get sizedBoxHeight => SizedBox(
        height: this,
      );

  Widget get sizedBoxWidth => SizedBox(
        width: this,
      );

  EdgeInsetsGeometry get verticalPadding =>
      EdgeInsets.symmetric(vertical: this);

  EdgeInsetsGeometry get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: this);

  EdgeInsetsGeometry get symmetricPadding => EdgeInsets.symmetric(
        vertical: this,
        horizontal: this,
      );
}

//!
//! PADDING EXTENSION ON WIDGET
extension PaddingExtension on Widget {
  Widget get generalHorizontalPadding => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21.0,
        ),
        child: this,
      );

  Widget get generalVerticalPadding => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: this,
      );

  Widget get generalPadding => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 120.0,
        ),
        child: this,
      );
}

//!
//! EXTENSIONS ON STRING
extension ImagePath on String {
  String get png => "assets/images/$this.png";
  String get jpg => "assets/images/$this.jpg";
  String get jpeg => "assets/images/$this.jpeg";
  String get gif => "assets/images/$this.gif";
  String get svg => "assets/icons/$this.svg";
}

extension StringCasingExtension on String {
  String? camelCase() => toBeginningOfSentenceCase(this);

  String toCapitalized() =>
      length > 0 ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}" : "";

  String toTitleCase() => replaceAll(RegExp(" +"), " ")
      .split(" ")
      .map((str) => str.toCapitalized())
      .join(" ");
}

//!
//! ALIGNMENT EXTENSIONS
extension AlignExtension on Widget {
  Align align({
    required Alignment widgetAlignment,
  }) {
    return Align(
      alignment: widgetAlignment,
      child: this,
    );
  }

  Align alignCenter() {
    return Align(
      child: this,
    );
  }

  Align alignCenterLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Align alignCenterRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Align alignBottomCenter() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
}

//!
//! ANIMATION EXTENSION
extension WidgetAnimation on Widget {
  Animate fadeInFromBottom({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
    AnimationController? controller,
  }) =>
      animate(
        delay: delay ?? 200.ms,
        controller: controller,
      )
          .move(
            duration: animationDuration ?? 300.ms,
            begin: offset ?? const Offset(0, 10),
          )
          .fade(
            duration: animationDuration ?? 400.ms,
            curve: Curves.fastOutSlowIn,
          );

  Animate fadeIn({
    Duration? delay,
    Duration? animationDuration,
    Curve? curve,
    AnimationController? controller,
  }) =>
      animate(
        delay: delay ?? 300.ms,
        controller: controller,
      ).fade(
        duration: animationDuration ?? 300.ms,
        curve: curve ?? Curves.decelerate,
      );
}

//!
//! STYLED TEXT EXTENSION ON STRING
extension StyledTextExtension on String {
  Text txt({
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    TextStyle? textStyle,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: true,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 10.0,
            height: height,
            wordSpacing: 4,
            letterSpacing: 1.5,
            color: color ??
                (Theme.of(context).brightness == Brightness.dark
                    ? appColours.grey200
                    : appColours.secondaryBlack),
            fontWeight: fontWeight ??
                (Theme.of(context).brightness == Brightness.dark
                    ? FontWeight.w400
                    : FontWeight.w500),
            fontFamily: appStrings.fontFamily,
            fontStyle: fontStyle,
            decoration: decoration,
          ),
    );
  }

  Text txt12({
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: 12.0,
        height: height,
        wordSpacing: 4,
        letterSpacing: 1.5,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? appColours.grey200
                : appColours.secondaryBlack),
        fontWeight: fontWeight ??
            (Theme.of(context).brightness == Brightness.dark
                ? FontWeight.w400
                : FontWeight.w500),
        fontFamily: appStrings.fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
    );
  }

  Text txt14({
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 14.0,
        wordSpacing: 4,
        letterSpacing: 1.5,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? appColours.grey200
                : appColours.secondaryBlack),
        fontWeight: fontWeight ??
            (Theme.of(context).brightness == Brightness.dark
                ? FontWeight.w400
                : FontWeight.w500),
        fontFamily: appStrings.fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
    );
  }

  Text txt16({
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: 16.0,
        wordSpacing: 4,
        letterSpacing: 1.5,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? appColours.grey200
                : appColours.secondaryBlack),
        fontWeight: fontWeight ??
            (Theme.of(context).brightness == Brightness.dark
                ? FontWeight.w400
                : FontWeight.w500),
        fontFamily: appStrings.fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        height: height,
      ),
    );
  }

  Text txt24({
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: 24.0,
        wordSpacing: 4,
        letterSpacing: 1.5,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? appColours.grey200
                : appColours.secondaryBlack),
        fontWeight: fontWeight ??
            (Theme.of(context).brightness == Brightness.dark
                ? FontWeight.w400
                : FontWeight.w500),
        fontFamily: appStrings.fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
    );
  }
}

//!
//! INKWELL EXTENSION ON WIDGET
extension InkWellExtension on Widget {
  InkWell onTap({
    required GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    BorderRadius? borderRadius,
    Color? splashColor = Colors.transparent,
    Color? highlightColor = Colors.transparent,
    String? tooltipMessage,
    BuildContext? context,
    void Function({
      required bool value,
    })? onHover,
  }) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        if (onHover != null) {
          onHover(value: value);
        }
      },
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      splashColor: splashColor,
      highlightColor: highlightColor,
      hoverColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: this,
    );
  }
}

//!
//! VALUE NOTIFIERS AND VALUE LISTENABLE BUILDERS EXTENSIONS
extension ValueNotifierExtension<AnyType> on AnyType {
  ValueNotifier<AnyType> get toValueNotifier {
    return ValueNotifier<AnyType>(this);
  }
}

extension ValueNotifierBuilderExtension<AnyType> on ValueNotifier<AnyType> {
  Widget toValueListenable({
    required Widget Function(BuildContext context, AnyType value, Widget? child)
        builder,
  }) {
    return ValueListenableBuilder<AnyType>(
      valueListenable: this,
      builder: builder,
    );
  }
}

extension ListenableBuilderExtension on List<Listenable> {
  Widget toMultiValueListenable({
    required Widget Function(BuildContext context, Widget? child) builder,
  }) {
    return ListenableBuilder(
      listenable: Listenable.merge(this),
      builder: builder,
    );
  }
}
