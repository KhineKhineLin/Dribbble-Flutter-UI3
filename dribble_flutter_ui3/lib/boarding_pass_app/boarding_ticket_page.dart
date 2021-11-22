import 'package:dribble_flutter_ui3/boarding_pass_app/ticket_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingTicketPage extends StatelessWidget {
  const BoardingTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              IconButton(
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.teal,
                                  size: 48,
                                ),
                                onPressed: () {},
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Boarding Pass',
                            style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.teal,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TicketWidget(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, right: 16, left: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 48,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2018/03/28/04/02/logo-3268177_1280.png'))),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Passenger\'s name',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Khinekhinel',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Frankfurt Am Main',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'FRA',
                                    style: TextStyle(fontSize: 28),
                                  )
                                ],
                              ),
                              RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    Icons.airplanemode_active,
                                    size: 48,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'New York JFK',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'JFK',
                                    style: TextStyle(fontSize: 28),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    cornerRounded: true,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Text(
                      'ADD TO WALLET',
                      style: GoogleFonts.poppins(
                          color: Colors.pink[50],
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
