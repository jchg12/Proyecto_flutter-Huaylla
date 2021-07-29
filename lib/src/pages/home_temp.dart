import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (var opt in opciones) {
      final tempwidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempwidget);
      lista.add(Divider());
    }
    return lista;
  }
}
