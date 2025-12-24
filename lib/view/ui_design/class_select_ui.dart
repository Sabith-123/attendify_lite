import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';

class ClassSelectUi extends StatelessWidget {
  ClassSelectUi({super.key});

  List<Map<String, dynamic>> classGridList = [
    {'std': '1', "ontap": ''},
    {'std': '2', "ontap": ''},
    {'std': '3', "ontap": ''},
    {'std': '4', "ontap": ''},
    {'std': '5', "ontap": ''},
    {'std': '6', "ontap": ''},
    {'std': '7', "ontap": ''},
    {'std': '8', "ontap": ''},
    {'std': '9', "ontap": ''},
    {'std': '10', "ontap": ''},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text(
            'Select Class',
            style: TextStyle(fontFamily: 'Poppins-Bold'),
          ),
        ),
        shape: Border(
          bottom: BorderSide(width: 2, color: bordercolorwhitegray),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 140,
                ),
                itemCount: classGridList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 2,
                        color: bordercolorwhitegray,
                      ),
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          classGridList[index]['std'],
                          style: TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontSize: 60,
                            color: black,
                          ),
                        ),
                        Text(
                          'Standard',
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomWidgetButtonBlueContainer(
                text: 'Continue',
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
