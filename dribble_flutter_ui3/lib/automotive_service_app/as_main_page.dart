import 'package:flutter/material.dart';

class ASMainPage extends StatefulWidget {
  const ASMainPage({Key? key}) : super(key: key);

  @override
  _ASMainPageState createState() => _ASMainPageState();
}

class _ASMainPageState extends State<ASMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          top: true,
          left: true,
          right: true,
          bottom: true,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi, Khinekhinel',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, right: 12, bottom: 16, top: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.shade200,
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 24,
                                  right: 24,
                                  child: Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade300,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.1),
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  left: 24,
                                  top: 24,
                                  bottom: 25,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '04',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 38),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Assigned',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Based on last one week',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontSize: 6),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, right: 12, bottom: 16, top: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.green.shade200,
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 24,
                                  right: 24,
                                  child: Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade300,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.1),
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  left: 24,
                                  top: 24,
                                  bottom: 25,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '11',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 38),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Assigned',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Based on last one week',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontSize: 6),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, right: 12, bottom: 16, top: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.shade200,
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 24,
                                  right: 24,
                                  child: Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade300,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.1),
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  left: 24,
                                  top: 24,
                                  bottom: 25,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '04',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 38),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Assigned',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Based on last one week',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontSize: 6),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Today\'s Appointment',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 10,
                  child: ListView(
                    children: [
                      Card(
                        margin:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 24, right: 24, top: 24, bottom: 24),
                          height: MediaQuery.of(context).size.height / 3.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Timothy Davidson'),
                                      Text('Maryland')
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_searching,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.add_location,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                  'Correct the low beam problem in the car and conduct a general inspection'),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Text('23 March, 12:00 PM~4:00PM')
                                ],
                              )
                            ],
                          ),
                        ),
                        elevation: 1.5,
                      ),
                      Card(
                        margin:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 24, right: 24, top: 24, bottom: 24),
                          height: MediaQuery.of(context).size.height / 3.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Timothy Davidson'),
                                      Text('Maryland')
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_searching,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.add_location,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                  'Correct the low beam problem in the car and product a general inspection'),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Text('23 March, 12:00 PM~4:00PM')
                                ],
                              )
                            ],
                          ),
                        ),
                        elevation: 1.5,
                      ),
                      Card(
                        margin:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 24, right: 24, top: 24, bottom: 24),
                          height: MediaQuery.of(context).size.height / 3.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Timothy Davidson'),
                                      Text('Maryland')
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_searching,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6))
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.add_location,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                  'Correct the low beam problem in the car and product a general inspection'),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Text('23 March, 12:00 PM~4:00PM')
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 12,
          child: Container(
            height: 72,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 32,
                    ),
                    Container(
                      height: 3,
                      width: 8,
                      decoration: BoxDecoration(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 32,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      size: 32,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 32,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
