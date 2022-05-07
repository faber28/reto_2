import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: Column(
          children: <Widget>[
            Text("Details"),
          ]
        )
      ),
    );
  }
}