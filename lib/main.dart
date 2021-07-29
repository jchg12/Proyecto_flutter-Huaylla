import 'package:flutter/material.dart';
import 'package:flutter_application_listview/src/pages/alert_page.dart';
import 'package:flutter_application_listview/src/pages/avatar_page.dart';
import 'package:flutter_application_listview/src/pages/card_page.dart';
import 'package:flutter_application_listview/src/pages/home_page.dart';
import 'package:flutter_application_listview/src/pages/tarjetas_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'alert': (BuildContext context) => AlertPage(),
        'card': (BuildContext context) => CardPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => TarjetasPage(),
        );
      },
    );
  }
}
