import 'package:flutter/material.dart';
import './pages/all.dart';
import './widgets/all.dart';
import './models/all.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=> HomePage(),
      '/item':(context)=> ItemPage(),
    },
  ));
}
