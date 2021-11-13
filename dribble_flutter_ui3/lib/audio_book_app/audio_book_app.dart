import 'package:flutter/material.dart';

class AudioBookApp extends StatelessWidget {
  const AudioBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.directions_car,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text('Shared library'), Text('19 listening')],
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(1, 2))
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2014/02/03/11/51/medicine-257349_960_720.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Text('The Art Of Making Memories'),
                    Text('Meik Wiking'),
                    Slider(
                      activeColor: Colors.orange,
                      inactiveColor: Colors.orange[100],
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      value: _sliderValue,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('00:40:04'), Text('03:40:00')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text('Chapter 2 out of 8'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('-5m'),
                        Text('-30s'),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 38,
                          ),
                        ),
                        Text('+30s'),
                        Text('+5m')
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [Text('1.0x'), Text('speed')],
                          ),
                          Column(
                            children: [Icon(Icons.book), Text('Bookmark')],
                          ),
                          Column(
                            children: [
                              Icon(Icons.slideshow),
                              Text('Show text')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          Text(
                            'Feed',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.tune,
                            color: Colors.grey,
                          ),
                          Text(
                            'My Shelf',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.orange,
                          ),
                          Text(
                            'Play',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.grey,
                          ),
                          Text(
                            'Notes',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
