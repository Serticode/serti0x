import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/firebase_options.dart';
import 'package:serti0x/frontend/screens/mobile/landing_page/mobile_landing_page.dart';
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
    final appTheme = ref.read(themeNotifierProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        constraints.maxWidth.log();

        return MaterialApp(
          title: appStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home: const MobileLandingPage(),

          /* switch (constraints.maxWidth <= 1150) {
            ///
            /// Mobile view
            true => const MobileLandingPage(),
    
            ///
            /// Desktop view
            false => const Scaffold(backgroundColor: Colors.purple),
          }, */
        );
      },
    );
  }
}
