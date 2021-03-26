import 'package:carplan/screens/car/components/car_item.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return CarItem();
          },
        ),
      ),
    );
  }
}
