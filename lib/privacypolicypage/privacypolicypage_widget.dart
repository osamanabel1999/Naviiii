import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacypolicypage_model.dart';
export 'privacypolicypage_model.dart';

class PrivacypolicypageWidget extends StatefulWidget {
  const PrivacypolicypageWidget({super.key});

  static String routeName = 'privacypolicypage';
  static String routePath = '/privacypolicypage';

  @override
  State<PrivacypolicypageWidget> createState() =>
      _PrivacypolicypageWidgetState();
}

class _PrivacypolicypageWidgetState extends State<PrivacypolicypageWidget> {
  late PrivacypolicypageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicypageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1C66AA),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C66AA),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Privacy Policy',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(3.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Privacy Policy\n\nEffective Date: March 30, 2026\n\n1. Introduction\nThis Privacy Policy applies to the mobile application (hereby referred to as \"The Application\") created by the developer (hereby referred to as \"The Developer\", \"We\", \"Us\", or \"Our\"). The Application is provided as an ad-supported service. By downloading, accessing, or using The Application, you signify your automatic acceptance of this Privacy Policy. If you do not agree to this policy, please do not use The Application.\n\n2. Information Collection and Use\nWe highly respect your privacy. The Application itself does not directly collect, store, or demand any personally identifiable information (PII) such as your name, email address, or phone number. You are not required to create an account to use the core features of The Application.\n\n3. Third-Party Services and Advertising\nThe Application is ad-supported. To provide this service, we use third-party advertising networks and APIs. These third-party services may collect and use certain non-personal information (such as your device\'s advertising ID, IP address, and general location data) to provide personalized advertisements and analyze user interactions.\nAdditionally, The Application fetches real-time public aviation data (e.g., METAR, TAF) from third-party APIs based on the standard codes you search for. We do not attach any of your personal identity to these data requests.\n\n4. Local Data Storage\nTo enhance your experience, The Application may save your customized preferences (such as specific units of measurement or visual themes). This data is stored entirely locally on your own device. We do not transmit this specific data to our servers, nor do we have any access to it. Clearing the app\'s cache or uninstalling it will delete these local preferences.\n\n5. Log Data\nIn the event of an app crash or error, we may collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the time and date of your use, and basic crash statistics. This data is strictly used to identify technical bugs and improve stability.\n\n6. Security\nWe value your trust in using our service and strive to use commercially acceptable means of protecting your experience. However, please remember that no method of transmission over the internet or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\n\n7. Changes to This Privacy Policy\nWe reserve the right to update or modify our Privacy Policy at any time without prior notice. You are advised to review this page periodically for any changes. Your continued use of The Application after any modifications indicates your acceptance of the updated Privacy Policy.\n\n8. Contact Information\nIf you have any questions, concerns, or suggestions regarding this Privacy Policy, please contact us at:semsimulator1@gmail.com\n',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
