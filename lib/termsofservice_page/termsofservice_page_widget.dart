import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsofservice_page_model.dart';
export 'termsofservice_page_model.dart';

class TermsofservicePageWidget extends StatefulWidget {
  const TermsofservicePageWidget({super.key});

  static String routeName = 'TermsofservicePage';
  static String routePath = '/termsofservicePage';

  @override
  State<TermsofservicePageWidget> createState() =>
      _TermsofservicePageWidgetState();
}

class _TermsofservicePageWidgetState extends State<TermsofservicePageWidget> {
  late TermsofservicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofservicePageModel());
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
            'Terms of Service',
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
                      'Terms of Service\n\nLast Updated: March 30, 2026\n\n1. Acceptance of Terms\nBy downloading, installing, or using this mobile application (hereby referred to as \"The Application\"), you agree to be bound by these Terms of Service. If you do not agree to these terms, you must immediately cease all use of The Application and uninstall it from your device. Your continued use of The Application constitutes a legally binding agreement between you and the Developer.\n\n2. Simulation and Educational Use Only (CRITICAL)\n• Non-Official Tool: The Application is designed and intended STRICTLY for simulation, flight training, and educational purposes only. * No Real-World Use: Under no circumstances should The Application be used for real-world flight planning, navigation, or operational decision-making in any aircraft.\n\n• Mandatory Warning: Pilots and aviation professionals must rely exclusively on certified onboard equipment and official aeronautical information publications (AIPs) provided by civil aviation authorities.\n\n3. Data Accuracy and Third-Party Sources\n• Uncertified Data: The Application fetches weather (METAR/TAF) and aviation data from various public, third-party APIs. This data is NOT provided by a certified aviation authority.\n\n• No Warranty: The Developer does not guarantee the accuracy, completeness, or timeliness of any information displayed. Data may be delayed, outdated, or incorrect.\n\n• No Liability: The Developer is not responsible for any errors, omissions, or malfunctions in the data provided by third-party sources. You use this information at your own risk.\n\n4. Modifications to Services and Pricing\n• Feature Changes: The Developer reserves the right to modify, suspend, or discontinue any feature, tool, or part of The Application at any time without prior notice.\n\n• Monetization: While The Application may currently be free or ad-supported, The Developer reserves the right to introduce paid features, subscription models, or transition The Application to a paid-only service at any time without prior liability or obligation to notify users in advance.\n\n• Removal of Features: Features currently available for free may be moved behind a \"Pro\" or \"Paid\" wall in future updates.\n5. Limitation of Liability\n\nTo the maximum extent permitted by applicable law, the Developer shall not be liable for any direct, indirect, incidental, or consequential damages resulting from:\n• The use or inability to use The Application.\n\n• Any reliance on the information provided within The Application.\n\n• Any real-world incidents, accidents, or legal violations arising from misuse of The Application in real-world aviation.\n\n6. User Responsibility\nYou agree to use The Application only for lawful purposes and in a manner that does not infringe the rights of others. You are solely responsible for ensuring that your use of The Application complies with local laws and regulations.\n\n7. Governing Law\nThese terms shall be governed by and construed in accordance with the laws of the Arab Republic of Egypt, without regard to its conflict of law provisions. Any legal action or proceeding related to The Application shall be brought exclusively in the courts of Egypt.\n\n8. Contact Information\nFor any legal inquiries or clarifications regarding these terms, please contact us at:semsimulator1@gmail.com\n',
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
