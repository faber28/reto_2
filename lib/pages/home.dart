import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_2/models/catalog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[bodyPage()])),
    );
  }

  Widget bodyPage() {
    return Consumer<Catalog>(builder: ((context, data, child) {
      return Column(children: <Widget>[
        for (var item in data.getCatalog)
          Card(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cardetails');
              },
              child: Text(item.getBrand),
            ),
          )
      ]);
    }));
  }
}
