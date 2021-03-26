import 'package:carplan/screens/auth/auth_screen.dart';
import 'package:carplan/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        actions: [
          TextButton(
            child: Text(
              '로그인',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
            onPressed: () {
              final route =
                  CupertinoPageRoute(builder: (context) => AuthScreen());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.network(
                    'https://littledeep.com/wp-content/uploads/2019/04/littledeep_illustration_car_style2.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              CustomButton(
                text: '회원가입',
                press: () {
                  final route =
                      CupertinoPageRoute(builder: (context) => AuthScreen());
                  Navigator.push(context, route);
                },
              ),
              TextButton(
                child: Text(
                  '로그인에 문제가 있으신가요?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueAccent,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
