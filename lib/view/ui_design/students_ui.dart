import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:attendify_lite/view/ui_design/add_student_ui.dart';
import 'package:attendify_lite/view_models/attendance_provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentsUi extends StatelessWidget {
  const StudentsUi({super.key});

  @override
  Widget build(BuildContext context) {
    final studentData = Provider.of<AttendanceProvide>(
      context,
    ).studentDetailsData;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            DialogRoute(
              context: context,
              builder: (context) {
                return AddStudentUi();
              },
            ),
          );
        },
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(shape: BoxShape.circle, color: blue),
          child: Icon(Icons.add, size: 50, color: white),
        ),
      ),
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text('Students', style: TextStyle(fontFamily: 'Poppins-Bold')),
        ),
        shape: Border(
          bottom: BorderSide(width: 2, color: bordercolorwhitegray),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            children: [
              Custom_search_box(onchanged: (value) {}),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 100),
                  itemCount: studentData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: bordercolorwhitegrayforlistview,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      studentData[index].studentimage
                                          .toString(),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        studentData[index].fullname.toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                      Text(
                                        'ID: ${studentData[index].idnumber}',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Medium',
                                          color: textformfildtextcolor,
                                        ),
                                      ),
                                      Text(
                                        'Std: ${studentData[index].standard}',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Medium',
                                          color: textformfildtextcolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Flex(
                                direction: Axis.horizontal,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      color: blue,
                                      size: 30,
                                    ),
                                  ),
                                  // SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete_outline_rounded,
                                      color: red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
