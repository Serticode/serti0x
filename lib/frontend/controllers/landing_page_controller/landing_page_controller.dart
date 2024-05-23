import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/controllers/landing_page_controller/controller_enum.dart';

//!
class AppPagesNotifier extends StateNotifier<AppPages> {
  AppPagesNotifier(super.initialState);

  final PageController pageViewController = PageController();

  void setPage({
    required AppPages currentPage,
  }) {
    state = currentPage;
  }
}
