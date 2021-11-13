import 'package:flutter/material.dart';

class AudioBookApp extends StatelessWidget {
  const AudioBookApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                        color: Colors.orange,
                        shape: BoxShape.circle
                      ),
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
                      child: Icon(Icons.directions_car,color: Colors.grey,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time,color: Colors.grey,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_horiz,color: Colors.grey,),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Placeholder()),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,color: Colors.grey,),
                        Text('Feed',style: TextStyle(
                          fontSize: 12
                        ),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.tune,color: Colors.grey,),
                        Text('My Shelf',style: TextStyle(
                          fontSize: 12
                        ),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow,color: Colors.orange,),
                        Text('Play',style: TextStyle(
                          fontSize: 12
                        ),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark,color: Colors.grey,),
                        Text('Notes',style: TextStyle(fontSize: 12),)
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