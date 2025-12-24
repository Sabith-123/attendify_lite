import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 150,
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
                    '1',
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 45,
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
            ),
            SizedBox(width: 20),
            TextFormField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: textformfildtextcolor),
                hintText: 'Search by Student Name or ID',
                hintStyle: TextStyle(
                  color: textformfildtextcolor,
                  fontFamily: 'Poppins-Medium',
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: black, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: bordercolorwhitegray, width: 2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: bordercolorwhitegray),
                ),
              ),
              cursorColor: black,
              style: TextStyle(color: black, fontFamily: 'Poppins-Regular'),
            ),
          ],
        ),
      ),
    );
  }
}
