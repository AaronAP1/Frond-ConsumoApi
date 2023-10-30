
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'agregarproducto_model.dart';
export 'agregarproducto_model.dart';

class AgregarproductoWidget extends StatefulWidget {
  const AgregarproductoWidget({Key? key}) : super(key: key);

  @override
  _AgregarproductoWidgetState createState() => _AgregarproductoWidgetState();
}

class _AgregarproductoWidgetState extends State<AgregarproductoWidget> {
  late AgregarproductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final url = Uri.parse("http://10.40.30.37:3000/api/v1/productos/crear");
  final headers = {"Content-Type": "application/json; charset=UTF-8"};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgregarproductoModel());

    _model.nombreController ??= TextEditingController();
    _model.nombreFocusNode ??= FocusNode();
    _model.proveedorController ??= TextEditingController();
    _model.proveedorFocusNode ??= FocusNode();
    _model.descripcionController ??= TextEditingController();
    _model.descripcionFocusNode ??= FocusNode();
    _model.stockController ??= TextEditingController();
    _model.stockFocusNode ??= FocusNode();
  }

  void registerProducto() async {
    final prod = {
      "nombre": _model.nombreController.text,
      "proveedor": _model.proveedorController.text,
      "descripcion": _model.descripcionController.text,
      "stock": _model.stockController.text
    };

    final res = await http.post(url, headers: headers, body: jsonEncode(prod));
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
            'Nuevo Producto',
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
                    'Rellene los datos a continuacion',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'ㅤㅤㅤ',
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: _model.nombreController,
                          focusNode: _model.nombreFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nombre ',
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
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.nombreControllerValidator
                              .asValidator(context),
                        ),
                        TextFormField(
                          controller: _model.proveedorController,
                          focusNode: _model.proveedorFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Proveedor',
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
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.proveedorControllerValidator
                              .asValidator(context),
                        ),
                        TextFormField(
                          controller: _model.descripcionController,
                          focusNode: _model.descripcionFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                            hintText: 'Descripcion sobre el producto',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                          child: TextFormField(
                            controller: _model.stockController,
                            focusNode: _model.stockFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Stock',
                              labelStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                              hintStyle:
                              FlutterFlowTheme.of(context).labelMedium,
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Readex Pro',
                              fontSize: 14,
                            ),
                            keyboardType: TextInputType.number,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.stockControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                          ),
                        ),
                      ].divide(SizedBox(height: 12)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 12),
                    child: FFButtonWidget(
                      onPressed: () async {
                        registerProducto();
                        context.pushNamed('principal');
                      },
                      text: 'Nuevo Producto',
                      icon: FaIcon(
                        FontAwesomeIcons.check,
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
