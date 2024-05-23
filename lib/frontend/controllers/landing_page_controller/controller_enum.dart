// ignore_for_file: sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serti0x/frontend/desktop/blog_page/blog_page.dart';
import 'package:serti0x/frontend/desktop/welcome_page/welcome_page.dart';
import 'package:serti0x/frontend/desktop/works_page/works_page.dart';

enum AppPages {
  blog(
    pageName: "Blog",
    screen: BlogPage(),
  ),
  welcome(
    pageName: "Welcome",
    screen: WelcomePage(),
  ),
  works(
    pageName: "Works",
    screen: WorksPage(),
  );

  final String pageName;
  final Widget screen;

  const AppPages({
    required this.pageName,
    required this.screen,
  });
}
