import 'dart:ui_web';

import 'package:login_simple_crud/models/producto.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'principal_model.dart';
export 'principal_model.dart';
import 'package:http/http.dart' as http;

class PrincipalWidget extends StatefulWidget {
  const PrincipalWidget({Key? key}) : super(key: key);

  @override
  _PrincipalWidgetState createState() => _PrincipalWidgetState();
}

class _PrincipalWidgetState extends State<PrincipalWidget> {
  late PrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final url = Uri.parse("http://10.40.30.37:3000/api/v1/productos/lista");

  late Future<List<Producto>> productos;

  @override
  void initState() {
    super.initState();
   productos= getProductos();
    _model = createModel(context, () => PrincipalModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Principal',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: FutureBuilder<List<Producto>>(

            future: productos,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(snapshot.data![i].nombre),
                          subtitle: Text(snapshot.data![i].descripcion),
                          trailing: PopupMenuButton(
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem(
                                  child: Text('Editar'),
                                  value: 'Editar',
                                ),
                                PopupMenuItem(
                                  child: Text('Eliminar'),
                                  value: 'Eliminar',
                                ),

                              ];
                            },
                            onSelected: (value) {
                              if (value == 'Editar') {
                                int idProdu = snapshot.data![i].id;

                                // Usar GoRouter para navegar y pasar el ID como argumento
                                GoRouter.of(context).go('/editarproducto?id=$idProdu');
                              } else if (value == 'Eliminar') {
                                // Hacer algo para la opción "Eliminar"
                              }
                            },

                          ),
                          leading: CircleAvatar(
                            child: Text(snapshot.data![i].nombre.substring(0,1)),
                          ),
                        ),
                        const Divider()
                      ],
                    );
                  },
                );

              }if(snapshot.hasError){
                return Center(child: Text("Falsexd"),);
              }
        return const CircularProgressIndicator();
      }),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            context.pushNamed('agregarproducto');

          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }



  @override
  Future<List<Producto>> getProductos() async{
    final  res = await http.get(url);
    final lista = List.from(jsonDecode(res.body));

    List<Producto> productos = [];

    lista.forEach((element) {
      final Producto user = Producto.fromJson(element);
      productos.add(user);
    });

    return productos;
  }
}
