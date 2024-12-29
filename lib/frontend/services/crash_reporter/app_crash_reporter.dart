import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

final appCrashReporter = AppCrashReporter();

class AppCrashReporter {
  factory AppCrashReporter() => singleInstance;
  const AppCrashReporter._internal();
  static const AppCrashReporter singleInstance = AppCrashReporter._internal();

  Future<void> initializeCrashReporting() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    FlutterError.onError = (errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
