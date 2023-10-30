
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'editar_producto_model.dart';
export 'editar_producto_model.dart';

class EditarProductoWidget extends StatefulWidget {
  const EditarProductoWidget({Key? key}) : super(key: key);

  @override
  _EditarProductoWidgetState createState() => _EditarProductoWidgetState();
}

class _EditarProductoWidgetState extends State<EditarProductoWidget> {
  late EditarProductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late final int idProdu;
  final headers = {"Content-Type": "application/json; charset=UTF-8"};


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarProductoModel());

    _model.descripcionController ??= TextEditingController();
    _model.descripcionFocusNode ??= FocusNode();
    _model.stockController ??= TextEditingController();
    _model.stockFocusNode ??= FocusNode();
  }

  void updateProducto() async{
    final url = Uri.parse("http://10.40.30.37:3000/api/v1/productos/$idProdu");
    final prodx = {

      "descripcion": _model.descripcionController.text,
      "stock" : _model.stockController.text
    };
  final res = await http.put(url, headers: headers, body: jsonEncode(prodx));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,

          title: Text(
            'Editar Producto',
            style: FlutterFlowTheme.of(context).titleLarge,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Editar un producto',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'ㅤㅤ',
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Icon(
                      Icons.qr_code,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: _model.descripcionController,
                          focusNode: _model.descripcionFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                            hintText: 'Nueva descripcion del producto',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 16, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          maxLines: 16,
                          minLines: 6,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.descripcionControllerValidator
                              .asValidator(context),
                        ),
                        TextFormField(
                          controller: _model.stockController,
                          focusNode: _model.stockFocusNode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Stock',
                            labelStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.number,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.stockControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                          ],
                        ),
                      ].divide(SizedBox(height: 12)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 12),
                    child: FFButtonWidget(
                      onPressed: () async {
                        updateProducto();
                        context.pushNamed('principal');
                      },
                      text: 'Actualizar Producto',
                      icon: Icon(
                        Icons.receipt_long,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                        elevation: 4,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
