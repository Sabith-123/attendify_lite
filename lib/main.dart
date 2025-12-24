import 'package:attendify_lite/view/ui_design/add_student_ui.dart';
import 'package:attendify_lite/view/ui_design/bottom_navigation_bar.dart';
import 'package:attendify_lite/view/ui_design/class_select_ui.dart';
import 'package:attendify_lite/view/ui_design/home_ui.dart';
import 'package:attendify_lite/view_models/attendance_provide.dart';
import 'package:attendify_lite/work.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return AttendanceProvide()..getData();
          },
        ),
      ],
      child: Attendify_lite(),
    ),
  );
}

class Attendify_lite extends StatelessWidget {
  const Attendify_lite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendify Lite',
      // home: ClassSelectUi(),
      // home: HomeUi(),
      // home: Work(),
      home: BottomNavigationBarpage(),
      // home: AddStudentUi(),
    );
  }
}
