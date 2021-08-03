// import 'package:hello_world/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'routes_const.dart';
import 'router.dart' as router;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(OptCenter());

class OptCenter extends StatelessWidget{
  //Esta aplicación funcionará como el root de la aplicación
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: LoginPageRoute,
    );
  }
}