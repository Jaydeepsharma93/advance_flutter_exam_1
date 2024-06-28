import 'package:advance_flutter_exam_1/screen/view/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset('assets/img/logo.png'),
      ),
    );
  }
}
