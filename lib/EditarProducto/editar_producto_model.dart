
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_producto_widget.dart' show EditarProductoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarProductoModel extends FlutterFlowModel<EditarProductoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    descripcionFocusNode?.dispose();
    descripcionController?.dispose();

    stockFocusNode?.dispose();
    stockController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
