import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final Color textColor;

  const CustomButton(
      {Key key,
      this.text,
      this.press,
      this.color = Colors.blueAccent,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: size.width,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
