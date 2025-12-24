import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:attendify_lite/view_models/attendance_provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeUi extends StatelessWidget {
  HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final studentdata = Provider.of<AttendanceProvide>(
      context,
    ).studentDetailsData;
    final valuesformprovider = Provider.of<AttendanceProvide>(context);
    final providerfun = Provider.of<AttendanceProvide>(context, listen: false);
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text(
            'Attendance',
            style: TextStyle(fontFamily: 'Poppins-Bold'),
          ),
        ),
        shape: Border(
          bottom: BorderSide(width: 2, color: bordercolorwhitegray),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      'Select Date :',
                      style: TextStyle(
                        color: black,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      valuesformprovider.datedata.toString(),
                      style: TextStyle(
                        color: black,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () async {
                    final pickedDates = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2025),
                      lastDate: DateTime(3000),
                      initialDate: DateTime.now(),
                    );
                    if (pickedDates != null) {
                      providerfun.datepickerfun(pickedDates);
                    }
                  },
                  icon: Icon(Icons.calendar_month_outlined),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Custom_search_box(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 20),
                itemCount: studentdata.length,
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
                                    'assets/images/Ellipse 79.png',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      studentdata[index].fullname!,
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                      ),
                                    ),
                                    Text(
                                      'ID:${studentdata[index].idnumber!}',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        color: textformfildtextcolor,
                                      ),
                                    ),
                                    Text(
                                      'Std: ${studentdata[index].standard!}',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        color: textformfildtextcolor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Switch(value: true, onChanged: (value) {}),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
