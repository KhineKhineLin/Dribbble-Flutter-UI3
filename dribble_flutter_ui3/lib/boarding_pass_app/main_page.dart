import 'package:flutter/material.dart';

import 'boarding_ticket_page.dart';

class BoardingPassApp extends StatelessWidget {
  const BoardingPassApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingTicketPage(),
    );
  }
}