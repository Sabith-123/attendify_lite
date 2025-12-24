import 'package:flutter/material.dart';

class BottomnavigationbarProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> bottom_navigation_bar_list = [
    {'icon': Icons.home_outlined, 'label': 'Home', 'pages': ''},
    {'icon': Icons.group_outlined, 'label': 'Students', 'pages': ''},
    {'icon': Icons.list_alt_rounded, 'label': 'Reports', 'pages': ''},
    {'icon': Icons.settings, 'label': 'Settings', 'pages': ''},
  ];

  void bottomnavigationchnage() {}
}
