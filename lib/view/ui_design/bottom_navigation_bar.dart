import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/view/ui_design/home_ui.dart';
import 'package:attendify_lite/view/ui_design/monthly_report_ui.dart';
import 'package:attendify_lite/view/ui_design/settings_ui.dart';
import 'package:attendify_lite/view/ui_design/students_ui.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarpage extends StatefulWidget {
  BottomNavigationBarpage({super.key});

  @override
  State<BottomNavigationBarpage> createState() =>
      _BottomNavigationBarpageState();
}

class _BottomNavigationBarpageState extends State<BottomNavigationBarpage> {
  final List<Map<String, dynamic>> bottomNavigationItems = [
    {'icon': Icons.home_outlined, 'label': 'Home', 'page': HomeUi()},
    {'icon': Icons.group_outlined, 'label': 'Students', 'page': StudentsUi()},
    {
      'icon': Icons.list_alt_rounded,
      'label': 'Reports',
      'page': MonthlyReportUi(),
    },
    {'icon': Icons.settings, 'label': 'Settings', 'page': SettingsUi()},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),

      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(height: 2, color: Colors.black, thickness: 0.5),
            BottomNavigationBar(
              currentIndex: selectedIndex,

              elevation: 0,
              backgroundColor: white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: blue,
              unselectedItemColor: black,
              enableFeedback: false,
              useLegacyColorScheme: false,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              items: List.generate(bottomNavigationItems.length, (index) {
                return BottomNavigationBarItem(
                  icon: Icon(bottomNavigationItems[index]['icon']),
                  label: bottomNavigationItems[index]['label'],
                );
              }),
            ),
          ],
        ),
        body: bottomNavigationItems[selectedIndex]['page'],
      ),
    );
  }
}
