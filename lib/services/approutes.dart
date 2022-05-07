import 'package:flutter/material.dart';
import 'package:reto_2/pages/home.dart';
import 'package:reto_2/pages/carDetails.dart';

class AppRoutes {
  Map<String, WidgetBuilder>? _routes;

  AppRoutes() {
    createRoutes();
  }

  void createRoutes() {
    _routes = {
      '/': (context) => Home(),
      "/cardetails": (context) => CarDetails(),
    };
  }

  get getRoutes => _routes;
}
