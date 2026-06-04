import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getCheckWX)] action in HomePage widget.
  ApiCallResponse? currentMetar;
  // Stores action output result for [Backend Call - API (GetTAF)] action in HomePage widget.
  ApiCallResponse? currentTAF;
  // Stores action output result for [Backend Call - API (GetAirportInfo)] action in HomePage widget.
  ApiCallResponse? currentAirportINFO;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getCheckWX)] action in TextField widget.
  ApiCallResponse? metarResult;
  // Stores action output result for [Backend Call - API (GetTAF)] action in TextField widget.
  ApiCallResponse? searchTAF;
  // Stores action output result for [Backend Call - API (GetAirportInfo)] action in TextField widget.
  ApiCallResponse? airportInfoResult;
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Container widget.
  bool? interstitialAdSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
