
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'agregarproducto_widget.dart' show AgregarproductoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarproductoModel extends FlutterFlowModel<AgregarproductoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Proveedor widget.
  FocusNode? proveedorFocusNode;
  TextEditingController? proveedorController;
  String? Function(BuildContext, String?)? proveedorControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  // State field(s) for Stock widget.
  FocusNode? stockFocusNode;
  TextEditingController? stockController;
  String? Function(BuildContext, String?)? stockControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    proveedorFocusNode?.dispose();
    proveedorController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();

    stockFocusNode?.dispose();
    stockController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
