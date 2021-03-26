import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.shade200,
            )),
      ),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.network(
                "https://cphoto.asiae.co.kr/listimglink/6/2019022210501155713_1550800212.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              color: Colors.amber,
              child: Text("sdf"),
            ),
          ],
        ),
      ),
    );
  }
}
