import 'package:carplan/screens/management/components/body.dart';
import 'package:flutter/material.dart';

class ManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("관리"),
      ),
      body: Body(),
    );
  }
}
