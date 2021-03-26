import 'package:carplan/screens/setting/components/body.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("설정"),
      ),
      body: Body(),
    );
  }
}
