import 'package:flutter/material.dart';

import 'as_main_page.dart';

class AutomotiveServiceApp extends StatelessWidget {
  const AutomotiveServiceApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ASMainPage(),
    );
  }
}