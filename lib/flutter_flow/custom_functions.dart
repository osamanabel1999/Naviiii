import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? formatAviationFreq(dynamic rawFreq) {
  String formatAviationFreq(int? rawFreq) {
    // لو الـ API مبعتش حاجة، نعرض N/A بدل null
    if (rawFreq == null) return 'N/A';

    try {
      // قسمة الرقم على مليون وتحويله لكسر
      double mhz = rawFreq / 1000000.0;

      // تنسيق الرقم ليكون 3 أرقام بعد العلامة العشرية
      return mhz.toStringAsFixed(3);
    } catch (e) {
      // في حالة حدوث أي خطأ، يرجع الرقم الأصلي زي ما هو
      return rawFreq.toString();
    }
  }
}

String? getAtisByIcao(
  String? allDataStr,
  String? searchIcao,
) {
  // 1. حماية لو البيانات داخلة فاضية أصلاً
  if (allDataStr == null || searchIcao == null || searchIcao.isEmpty) {
    return "Enter Airport ICAO";
  }

  try {
    // فك شفرة الـ JSON بالكامل
    Map<String, dynamic> fullData = jsonDecode(allDataStr);

    // الدخول على لستة الـ atis اللي جوه البيانات
    List<dynamic> atisList = fullData['atis'] ?? [];

    // 2. البحث عن المطار
    var airport = atisList.firstWhere(
      (e) => e['callsign'].toString().startsWith(searchIcao.toUpperCase()),
      orElse: () => null,
    );

    if (airport != null) {
      return airport['text_atis'].toString();
    } else {
      return "No ATIS found for $searchIcao";
    }
  } catch (e) {
    // لو لسه فيه أيرور، هنخلي الفانكشن تقولنا إيه هو بالظبط عشان نعرف نحله
    return "Error: ${e.toString().substring(0, 20)}";
  }
}
