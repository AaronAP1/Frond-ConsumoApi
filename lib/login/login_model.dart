import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DNI widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniController;
  String? Function(BuildContext, String?)? dniControllerValidator;
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    dniFocusNode?.dispose();
    dniController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
