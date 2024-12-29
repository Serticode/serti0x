import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:serti0x/firebase_options.dart';
import 'package:serti0x/frontend/screens/mobile/landing_page/mobile_landing_page.dart';
import 'package:serti0x/frontend/services/crash_reporter/app_crash_reporter.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await appCrashReporter.initializeCrashReporting();

  runApp(
    const ProviderScope(
      child: Serti0x(),
    ),
  );
}

class Serti0x extends ConsumerWidget {
  const Serti0x({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(themeNotifierProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      ensureScreenSize: true,

      //! 1440 BY 1024 - THAT'S THE LAYOUT GIVEN ON THE DESIGN BOARD
      designSize: const Size(1512, 1632),
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            constraints.maxWidth.log();

            return MaterialApp(
              title: appStrings.appName,
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              home: switch (constraints.maxWidth <= 1150) {
                ///
                /// Mobile view
                true => const MobileLandingPage(),

                ///
                /// Desktop view
                false => const Scaffold(backgroundColor: Colors.purple),
              },
            );
          },
        );
      },
    );
  }
}
