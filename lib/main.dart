import 'package:flutter/material.dart';
import "./screens/home.dart";

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (_) => Home(),
    },
    initialRoute: "/",
  ));
}
