import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'prueba.dart';
import 'routes_const.dart';
import 'package:hello_world/portfolio/portfolio_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case Prueba:
      var loginArgument = settings.arguments;
      return MaterialPageRoute(builder: (context) => PruebaView(data_usuario: loginArgument));
    case Home:
      var loginArgument = settings.arguments;
      return MaterialPageRoute(builder: (context) => HomeView(data_usuario: loginArgument));
    case Gallery:
      return MaterialPageRoute(builder: (context) => PortfolioPage());
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
  }
}