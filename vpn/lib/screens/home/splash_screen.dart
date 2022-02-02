import 'package:flutter/material.dart';
import 'package:vpn/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo/vpn_logo.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
