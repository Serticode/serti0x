//!
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_enum.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/landing_page_controller.dart';

final landingPageController = StateNotifierProvider<AppPagesNotifier, AppPages>(
  (ref) {
    return AppPagesNotifier(
      AppPages.welcome,
    );
  },
);
