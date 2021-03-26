import 'package:carplan/screens/car/components/item.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Item();
        },
      ),
    );
  }
}
