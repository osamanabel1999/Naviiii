import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _metarData;
  dynamic get metarData => _metarData;
  set metarData(dynamic value) {
    _metarData = value;
  }

  int _tabNumber = 1;
  int get tabNumber => _tabNumber;
  set tabNumber(int value) {
    _tabNumber = value;
  }

  String _currentAtisCallsignl = 'HECA_ATIS';
  String get currentAtisCallsignl => _currentAtisCallsignl;
  set currentAtisCallsignl(String value) {
    _currentAtisCallsignl = value;
  }

  dynamic _currentAtisCallsign = jsonDecode('null');
  dynamic get currentAtisCallsign => _currentAtisCallsign;
  set currentAtisCallsign(dynamic value) {
    _currentAtisCallsign = value;
  }

  String _selectedLevel = '';
  String get selectedLevel => _selectedLevel;
  set selectedLevel(String value) {
    _selectedLevel = value;
  }

  dynamic _dictionary = jsonDecode(
      '[{\"term\":\"METAR\",\"name\":\"Aviation Routine Weather Report\"},{\"term\":\"TAF\",\"name\":\"Terminal Aerodrome Forecast\"},{\"term\":\"NOTAM\",\"name\":\"Notice to Airmen\"},{\"term\":\"CAVOK\",\"name\":\"Ceiling and Visibility OK\"},{\"term\":\"SKC\",\"name\":\"Sky Clear\"},{\"term\":\"FEW\",\"name\":\"Few Clouds\"},{\"term\":\"SCT\",\"name\":\"Scattered Clouds\"},{\"term\":\"BKN\",\"name\":\"Broken Clouds\"},{\"term\":\"OVC\",\"name\":\"Overcast\"},{\"term\":\"VV\",\"name\":\"Vertical Visibility\"},{\"term\":\"TS\",\"name\":\"Thunderstorm\"},{\"term\":\"RA\",\"name\":\"Rain\"},{\"term\":\"DZ\",\"name\":\"Drizzle\"},{\"term\":\"SN\",\"name\":\"Snow\"},{\"term\":\"GR\",\"name\":\"Hail\"},{\"term\":\"GS\",\"name\":\"Small Hail\"},{\"term\":\"BR\",\"name\":\"Mist\"},{\"term\":\"FG\",\"name\":\"Fog\"},{\"term\":\"HZ\",\"name\":\"Haze\"},{\"term\":\"FU\",\"name\":\"Smoke\"},{\"term\":\"DU\",\"name\":\"Widespread Dust\"},{\"term\":\"SA\",\"name\":\"Sand\"},{\"term\":\"VA\",\"name\":\"Volcanic Ash\"},{\"term\":\"SQ\",\"name\":\"Squalls\"},{\"term\":\"FC\",\"name\":\"Funnel Cloud\"},{\"term\":\"DS\",\"name\":\"Duststorm\"},{\"term\":\"SS\",\"name\":\"Sandstorm\"},{\"term\":\"PO\",\"name\":\"Dust/Sand Whirls\"},{\"term\":\"VC\",\"name\":\"In Vicinity\"},{\"term\":\"MI\",\"name\":\"Shallow\"},{\"term\":\"BC\",\"name\":\"Patches\"},{\"term\":\"PR\",\"name\":\"Partial\"},{\"term\":\"DR\",\"name\":\"Low Drifting\"},{\"term\":\"BL\",\"name\":\"Blowing\"},{\"term\":\"SH\",\"name\":\"Showers\"},{\"term\":\"FZ\",\"name\":\"Freezing\"},{\"term\":\"BECMG\",\"name\":\"Becoming\"},{\"term\":\"TEMPO\",\"name\":\"Temporary\"},{\"term\":\"PROB30\",\"name\":\"Probability 30%\"},{\"term\":\"PROB40\",\"name\":\"Probability 40%\"},{\"term\":\"FM\",\"name\":\"From\"},{\"term\":\"NOSIG\",\"name\":\"No Significant Change\"},{\"term\":\"QNH\",\"name\":\"Altimeter Setting\"},{\"term\":\"QFE\",\"name\":\"Field Elevation Pressure\"},{\"term\":\"VRB\",\"name\":\"Variable Wind\"},{\"term\":\"WS\",\"name\":\"Wind Shear\"},{\"term\":\"RVR\",\"name\":\"Runway Visual Range\"},{\"term\":\"RWY\",\"name\":\"Runway\"},{\"term\":\"TWY\",\"name\":\"Taxiway\"},{\"term\":\"CLSD\",\"name\":\"Closed\"},{\"term\":\"WIP\",\"name\":\"Work in Progress\"},{\"term\":\"OBST\",\"name\":\"Obstacle\"},{\"term\":\"U/S\",\"name\":\"Unserviceable\"},{\"term\":\"NAV\",\"name\":\"Navigation Aids\"},{\"term\":\"OPR\",\"name\":\"Operative\"},{\"term\":\"SIGMET\",\"name\":\"Significant Meteorological Information\"},{\"term\":\"AIRMET\",\"name\":\"Airmen\'s Meteorological Information\"},{\"term\":\"PIREP\",\"name\":\"Pilot Report\"},{\"term\":\"AUTO\",\"name\":\"Automated Observation\"},{\"term\":\"COR\",\"name\":\"Correction\"},{\"term\":\"NIL\",\"name\":\"None\"},{\"term\":\"NSC\",\"name\":\"No Significant Clouds\"},{\"term\":\"RE\",\"name\":\"Recent\"},{\"term\":\"UP\",\"name\":\"Unknown Precipitation\"},{\"term\":\"IC\",\"name\":\"Ice Crystals\"},{\"term\":\"PL\",\"name\":\"Ice Pellets\"},{\"term\":\"SG\",\"name\":\"Snow Grains\"},{\"term\":\"PY\",\"name\":\"Spray\"},{\"term\":\"CB\",\"name\":\"Cumulonimbus\"},{\"term\":\"TCU\",\"name\":\"Towering Cumulus\"},{\"term\":\"LTG\",\"name\":\"Lightning\"},{\"term\":\"VCTS\",\"name\":\"Thunderstorm in Vicinity\"},{\"term\":\"NSW\",\"name\":\"No Significant Weather\"},{\"term\":\"SFC\",\"name\":\"Surface\"},{\"term\":\"AGL\",\"name\":\"Above Ground Level\"},{\"term\":\"MSL\",\"name\":\"Mean Sea Level\"},{\"term\":\"KT\",\"name\":\"Knots\"},{\"term\":\"MPS\",\"name\":\"Meters Per Second\"},{\"term\":\"DEG\",\"name\":\"Degrees\"},{\"term\":\"G\",\"name\":\"Gusts\"},{\"term\":\"SM\",\"name\":\"Statute Miles\"},{\"term\":\"FT\",\"name\":\"Feet\"},{\"term\":\"M\",\"name\":\"Meters\"},{\"term\":\"FPM\",\"name\":\"Feet Per Minute\"},{\"term\":\"ISA\",\"name\":\"International Standard Atmosphere\"},{\"term\":\"MS\",\"name\":\"Minus\"},{\"term\":\"PS\",\"name\":\"Plus\"},{\"term\":\"T\",\"name\":\"Temperature\"},{\"term\":\"DP\",\"name\":\"Dew Point\"},{\"term\":\"CLR\",\"name\":\"Clear Sky below 12000ft\"},{\"term\":\"APR\",\"name\":\"Apron\"},{\"term\":\"AIP\",\"name\":\"Aeronautical Information Publication\"},{\"term\":\"AD\",\"name\":\"Aerodrome\"},{\"term\":\"ILS\",\"name\":\"Instrument Landing System\"},{\"term\":\"VOR\",\"name\":\"VHF Omni-directional Range\"},{\"term\":\"DME\",\"name\":\"Distance Measuring Equipment\"},{\"term\":\"TWR\",\"name\":\"Tower\"},{\"term\":\"GND\",\"name\":\"Ground\"},{\"term\":\"APP\",\"name\":\"Approach Control\"},{\"term\":\"ACC\",\"name\":\"Area Control Center\"}]');
  dynamic get dictionary => _dictionary;
  set dictionary(dynamic value) {
    _dictionary = value;
  }

  String _currentAtisText = '';
  String get currentAtisText => _currentAtisText;
  set currentAtisText(String value) {
    _currentAtisText = value;
  }
}
