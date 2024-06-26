import 'package:flutter/material.dart';
import 'package:puzzle8game/pages/game/gamePage.dart';
import 'package:puzzle8game/pages/about.dart';
import 'package:puzzle8game/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case aboutPageRoute:
      return _getPageRoute(const AboutPage(), settings);
    case newGameRoute:
      return _getPageRoute(const GamePage(), settings);
    default:
      return _getPageRoute(const GamePage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => child, settings: settings);
}