// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> filterVatsimAtis(
  dynamic vatsimJson,
  String? icaoCode,
) async {
  // التأكد من وجود البيانات
  if (vatsimJson == null ||
      vatsimJson['atis'] == null ||
      icaoCode == null ||
      icaoCode.isEmpty) {
    return "No Data";
  }

  try {
    List atisList = vatsimJson['atis'];
    String target = icaoCode.toUpperCase();

    // البحث عن المطار في قائمة الـ ATIS
    var result = atisList.firstWhere(
      (e) => e['airport'].toString().toUpperCase() == target,
      orElse: () => null,
    );

    if (result != null &&
        result['text_atis'] != null &&
        result['text_atis'] is List) {
      return result['text_atis'][0].toString();
    }
  } catch (e) {
    return "Error finding ATIS";
  }

  return "No ATIS Online for $icaoCode";
}
