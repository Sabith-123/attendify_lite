import 'dart:io';

import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:attendify_lite/view_models/attendance_provide.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddStudentUi extends StatelessWidget {
  AddStudentUi({super.key});

  final fullnamecontroller = TextEditingController();
  final idnumbercontroller = TextEditingController();
  final phonenumbercontroller = TextEditingController();
  final placecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final stduentdata = Provider.of<AttendanceProvide>(
    //   context,
    // ).studentDetailsData;
    final studentfunction = Provider.of<AttendanceProvide>(
      context,
      listen: false,
    );
    final provider = Provider.of<AttendanceProvide>(context);
    final dateofbirth = Provider.of<AttendanceProvide>(context).dobdate;
    final imagess = Provider.of<AttendanceProvide>(context).imagess;
    final dropdownmenuselectvalue = Provider.of<AttendanceProvide>(
      context,
    ).dropdownmenuselectvalue;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text(
            'Add Students',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: custom_Whit_Outer_Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // CircleAvatar(
                        //   radius: 40,
                        //   backgroundImage: provider.imagess != null
                        //       ? (kIsWeb
                        //             ? NetworkImage(provider.imagess!.path)
                        //             : FileImage(File(provider.imagess!.path))
                        //                   as ImageProvider)
                        //       : const AssetImage('assets/images/user.png'),
                        // ),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: provider.imageBytes != null
                              ? MemoryImage(provider.imageBytes!)
                              : const AssetImage('assets/images/user.png')
                                    as ImageProvider,
                        ),

                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            custom_text_button_image_select(
                              ontap: () {
                                studentfunction.pickImagefun(
                                  ImageSource.gallery,
                                  context,
                                );
                              },
                              icons: Icons.image_outlined,
                              texts: 'Upload Image',
                            ),
                            SizedBox(width: 10),
                            custom_text_button_image_select(
                              ontap: () {
                                studentfunction.pickImagefun(
                                  ImageSource.camera,
                                  context,
                                );
                              },
                              icons: Icons.camera_alt_outlined,
                              texts: 'Take Photo',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: custom_Whit_Outer_Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        custom_textformfield(
                          controller: fullnamecontroller,
                          hinttext: 'Enter full name',
                        ),
                        Text(
                          'ID Number',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        custom_textformfield(
                          controller: idnumbercontroller,
                          hinttext: 'Enter student ID',
                        ),
                        Text(
                          'Parent Phone Number',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        custom_textformfield(
                          controller: phonenumbercontroller,
                          hinttext: 'Enter parent\'s phone number',
                        ),
                        Text(
                          'Place',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        custom_textformfield(
                          controller: placecontroller,
                          hinttext: 'Enter student\'s place of residence',
                        ),
                        Text(
                          'Standard',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        DropdownButtonFormField<dynamic>(
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 16,
                            color: textformfildtextcolor,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: black, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: bordercolorwhitegray,
                                width: 2,
                              ),
                            ),
                            hintText: 'Select Standard',

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 1,
                                color: bordercolorwhitegray,
                              ),
                            ),
                          ),
                          items: [
                            DropdownMenuItem(value: '1', child: Text('1')),
                            DropdownMenuItem(value: '2', child: Text('2')),
                            DropdownMenuItem(value: '3', child: Text('3')),
                            DropdownMenuItem(value: '4', child: Text('4')),
                            DropdownMenuItem(value: '5', child: Text('5')),
                            DropdownMenuItem(value: '6', child: Text('6')),
                            DropdownMenuItem(value: '7', child: Text('7')),
                            DropdownMenuItem(value: '8', child: Text('8')),
                            DropdownMenuItem(value: '9', child: Text('9')),
                            DropdownMenuItem(value: '10', child: Text('10')),
                          ],
                          onChanged: (value) {
                            studentfunction.dropdownmenufun(value);
                          },
                        ),
                        Text(
                          'Date of Birth',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 45,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 2,
                                  color: bordercolorwhitegray,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  Provider.of<AttendanceProvide>(
                                    context,
                                  ).dobdate.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    color: textformfildtextcolor,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                final DateTime? dobPicker =
                                    await showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1990),
                                      lastDate: DateTime.now(),
                                      initialDate: DateTime.now(),
                                    );
                                if (dobPicker != null) {
                                  Provider.of<AttendanceProvide>(
                                    context,
                                    listen: false,
                                  ).dobfun(dobPicker);
                                }
                              },
                              icon: Icon(
                                Icons.date_range_outlined,
                                size: 30,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 20,
                  bottom: 5,
                ),
                child: custom_Whit_Outer_Container(
                  child: InkWell(
                    onTap: () {
                      studentfunction.addStudent(
                        fname: fullnamecontroller.text,
                        idnumber: idnumbercontroller.text,
                        phnumber: phonenumbercontroller.text,
                        place: placecontroller.text,
                        dob: dateofbirth,
                        standard: dropdownmenuselectvalue,
                      );
                      Navigator.pop(context);
                    },
                    child: CustomWidgetButtonBlueContainer(text: 'Save'),
                  ),
                ),
              ),
              CustomWidgetButtonContainer(
                text: 'Cancel/Back',
                ontap: () {
                  final provider = Provider.of<AttendanceProvide>(
                    context,
                    listen: false,
                  );

                  provider.base64Image = null;
                  provider.imageBytes = null;
                  provider.imagess = null;
                  provider.dobdate = 'Pick a date';
                  provider.notifyListeners();

                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
