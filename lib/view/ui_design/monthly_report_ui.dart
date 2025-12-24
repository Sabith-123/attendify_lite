import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';

class MonthlyReportUi extends StatefulWidget {
  const MonthlyReportUi({super.key});

  @override
  State<MonthlyReportUi> createState() => _MonthlyReportUiState();
}

class _MonthlyReportUiState extends State<MonthlyReportUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text(
            'Monthly Report',
            style: TextStyle(fontFamily: 'Poppins-Bold'),
          ),
        ),
        shape: Border(
          bottom: BorderSide(width: 2, color: bordercolorwhitegray),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: white,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomDropdownmenu(
                      onChange: (val) {},
                      hinttext: 'Months',
                      items: [
                        DropdownMenuItem(value: 1, child: Text('Jun')),
                        DropdownMenuItem(value: 2, child: Text('May')),
                        DropdownMenuItem(value: 3, child: Text('april')),
                        DropdownMenuItem(value: 4, child: Text('march')),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomDropdownmenu(
                      onChange: (val) {},
                      hinttext: 'Years',
                      items: [
                        DropdownMenuItem(value: 1, child: Text('2014')),
                        DropdownMenuItem(value: 2, child: Text('2020')),
                        DropdownMenuItem(value: 3, child: Text('2025')),
                        DropdownMenuItem(value: 4, child: Text('2052')),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ///ontap change blue color
                  Expanded(
                    child: custom_container_for_data_controll(
                      text: 'Highest',
                      containercolor: bordercolorwhitegray,
                      textcolor: black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: custom_container_for_data_controll(
                      text: 'Lowest',
                      containercolor: bordercolorwhitegray,
                      textcolor: black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: custom_container_for_data_controll(
                      text: 'A-Z',
                      containercolor: bordercolorwhitegray,
                      textcolor: black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 50),
                  itemCount: 10,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: custom_Whit_Outer_Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/images/Ellipse 79.png',
                                    ),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Charlie Brown',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Bold',
                                          fontSize: 18,
                                        ),
                                      ),
                                      // SizedBox(width: 5,),
                                      Text(
                                        'STU003',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          // fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flex(
                                    direction: Axis.horizontal,
                                    children: [
                                      Text(
                                        'Present',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          // fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Absent',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          // fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flex(
                                    direction: Axis.horizontal,
                                    children: [
                                      Text(
                                        '20 days',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          // fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '2 days',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          color: litered,
                                          // fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 10,
                                      backgroundColor: red.withOpacity(0.6),
                                      color: blue,
                                      value: 0.75,
                                      trackGap: 5,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: litblue,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '75 %',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Medium',
                                            color: blue,
                                            // fontSize: 18,
                                          ),
                                        ),
                                      ),
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
