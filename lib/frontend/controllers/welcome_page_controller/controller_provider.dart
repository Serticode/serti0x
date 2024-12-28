import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/welcome_page_controller/welcome_page_controller.dart';

final welcomePageActionsProvider = Provider(
  (ref) => const WelcomePageActions(),
);
