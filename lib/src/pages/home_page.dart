import 'package:flutter/material.dart';

import 'package:flutter_application_listview/src/providers/menu_provider.dart';
import 'package:flutter_application_listview/src/utils/icono_string_util.dart'; 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgedTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          /* final route = MaterialPageRoute(builder: (context) => AvatarPage()); */
          /* Navigator.push(
              context, MaterialPageRoute(builder: (context) => AvatarPage())); */
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgedTemp)..add(Divider());
    });
    return opciones;
  }
}
