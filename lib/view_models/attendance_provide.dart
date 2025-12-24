import 'dart:convert';
import 'dart:math';

import 'package:attendify_lite/models/student_model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AttendanceProvide extends ChangeNotifier {
  List<StudentModel> studentDetailsData = [];
  XFile? imagess;
  String? datedata = DateFormat(
    'EEE,MMM,dd,yyyy',
  ).format(DateTime.now()).toString();
  String? dropdownmenuselectvalue;
  String? dobdate = 'Pick a date';
  Future<void> getData() async {
    final sharedpref = await SharedPreferences.getInstance();
    final data = sharedpref.getString('studentdetails');
    if (data != null) {
      final List decodedata = jsonDecode(data);
      studentDetailsData = decodedata
          .map((e) => StudentModel.fromjson(e))
          .toList();
    }
    notifyListeners();
  }

  Future<void> putData() async {
    final sharedperf = await SharedPreferences.getInstance();
    final dataofstudentlist = studentDetailsData
        .map((e) => e.tojson())
        .toList();
    await sharedperf.setString('studentdetails', jsonEncode(dataofstudentlist));
  }

  void addStudent({
    String? fname,
    String? idnumber,
    String? phnumber,
    String? image,
    String? place,
    String? dob,
    String? standard,
  }) async {
    try {
      if (fname!.isNotEmpty &&
          idnumber!.isNotEmpty &&
          place!.isNotEmpty &&
          phnumber!.isNotEmpty &&
          image != null &&
          dob!.isNotEmpty &&
          standard!.isNotEmpty) {
        studentDetailsData.add(
          StudentModel(
            attend: false,
            studentimage: image,
            fullname: fname.trim(),
            idnumber: idnumber.trim(),
            phnumber: phnumber!.trim(),
            place: place.trim(),
            dob: dob,
            standard: standard,
          ),
        );
      }
      putData();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  void pickImagefun(ImageSource source, BuildContext context) async {
    try {
      final picker = await ImagePicker().pickImage(source: source);

      if (picker != null) {
        imagess = picker;
        notifyListeners();
        putData();
      }
      imagess == null;
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('error: $e')));
    }
  }

  void datepickerfun(DateTime pkdate) {
    if (pkdate != null) {
      datedata = DateFormat('EEE,MMM dd,yyyy').format(pkdate);
    }

    notifyListeners();
    putData();
  }

  void dropdownmenufun(String valuedata) {
    if (valuedata != null) {
      dropdownmenuselectvalue = valuedata;
    }
    notifyListeners();
    putData();
  }

  void dobfun(DateTime dobdatepicked) {
    if (dobdatepicked != null) {
      dobdate =
          '${dobdatepicked.day}-${dobdatepicked.month}-${dobdatepicked.year}';
    }
    notifyListeners();
    putData();
  }
}
