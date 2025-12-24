class StudentModel {
  final String studentimage; // IMAGE PATH
  final String fullname;
  final String idnumber;
  final String phnumber;
  final String place;
  final String standard;
  final String dob;
  final bool attend;

  StudentModel({
    required this.studentimage,
    required this.fullname,
    required this.idnumber,
    required this.phnumber,
    required this.place,
    required this.standard,
    required this.dob,
    required this.attend,
  });

  factory StudentModel.fromjson(Map<String, dynamic> json) {
    return StudentModel(
      studentimage: json['studentimage'],
      fullname: json['fullname'],
      idnumber: json['idnumber'],
      phnumber: json['phnumber'],
      place: json['place'],
      standard: json['standard'],
      dob: json['dob'],
      attend: json['attend'],
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'studentimage': studentimage,
      'fullname': fullname,
      'idnumber': idnumber,
      'phnumber': phnumber,
      'place': place,
      'standard': standard,
      'dob': dob,
      'attend': attend,
    };
  }

  StudentModel copyWith({bool? attend}) {
    return StudentModel(
      studentimage: studentimage,
      fullname: fullname,
      idnumber: idnumber,
      phnumber: phnumber,
      place: place,
      standard: standard,
      dob: dob,
      attend: attend ?? this.attend,
    );
  }
}
