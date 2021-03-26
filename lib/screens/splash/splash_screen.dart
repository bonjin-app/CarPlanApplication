import 'package:carplan/screens/splash/components/body.dart';
import 'package:carplan/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.shared.init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
