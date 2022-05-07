import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_2/services/approutes.dart';
import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/models/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Catalog(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reto_2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: AppRoutes().getRoutes,
      ),
    );
  }
}
