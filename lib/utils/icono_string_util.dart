


import 'package:flutter/material.dart';

final _icons = <String,IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'grid_on': Icons.grid_on,
  'check_box': Icons.check_box,
  'tab': Icons.tab
  //agregar a medida que sea necesario
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color: Colors.teal,);
}