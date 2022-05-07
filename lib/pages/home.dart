import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("Home"),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cardetails");
              },
              child: const Text('Go to Car Details'),
            )
          ])),
    );
  }
}
