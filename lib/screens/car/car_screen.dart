import 'package:carplan/screens/car/components/body.dart';
import 'package:carplan/screens/car/components/item.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("자동차"),
      ),
      body: CarBody(),
    );
  }
}
