// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String getSpecificAtis(
  dynamic allVatsimJson,
  String? searchIcao,
) {
  // 1. التأكد إن الداتا وصلت من السيرفر
  if (allVatsimJson == null || allVatsimJson['atis'] == null) {
    return "FETCHING DATA...";
  }

  // 2. التأكد إن اليوزر كتب كود المطار
  if (searchIcao == null || searchIcao.isEmpty) {
    return "ENTER ICAO CODE";
  }

  // 3. تحويل لستة الـ ATIS لمتغير نقدر نبحث فيه
  try {
    List atisList = allVatsimJson['atis'];

    // 4. البحث عن المطار (مع تحويل الحروف لـ Capital)
    final String targetIcao = searchIcao.toUpperCase();

    var result = atisList.firstWhere(
      (element) => element['airport'].toString().toUpperCase() == targetIcao,
      orElse: () => null,
    );

    // 5. لو لقى المطار يرجع النص، لو ملقاش يبلغ اليوزر
    if (result != null &&
        result['text_atis'] != null &&
        result['text_atis'] is List &&
        result['text_atis'].isNotEmpty) {
      return result['text_atis'][0].toString();
    } else {
      return "NO ATIS ONLINE FOR $targetIcao";
    }
  } catch (e) {
    return "ERROR PROCESSING DATA";
  }
}
