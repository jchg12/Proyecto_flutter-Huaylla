import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder-open': Icons.folder_open,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.green,
  );
}
