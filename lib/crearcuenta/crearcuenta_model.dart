import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crearcuenta_widget.dart' show CrearcuentaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearcuentaModel extends FlutterFlowModel<CrearcuentaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DNI widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniController;
  String? Function(BuildContext, String?)? dniControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for apellidop widget.
  FocusNode? apellidopFocusNode;
  TextEditingController? apellidopController;
  String? Function(BuildContext, String?)? apellidopControllerValidator;
  // State field(s) for apellidom widget.
  FocusNode? apellidomFocusNode;
  TextEditingController? apellidomController;
  String? Function(BuildContext, String?)? apellidomControllerValidator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionController;
  String? Function(BuildContext, String?)? direccionControllerValidator;
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

    nombreFocusNode?.dispose();
    nombreController?.dispose();

    apellidopFocusNode?.dispose();
    apellidopController?.dispose();

    apellidomFocusNode?.dispose();
    apellidomController?.dispose();

    correoFocusNode?.dispose();
    correoController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoController?.dispose();

    direccionFocusNode?.dispose();
    direccionController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
