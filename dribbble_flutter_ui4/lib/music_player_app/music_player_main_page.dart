import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundColor = Color(0xff7800ee);

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
              left: 48,
              top: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.1,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(42)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media3.giphy.com/media/J7vL9kmhsRfDgiT3kt/200w.webp?cid=ecf05e473nlnfx2nd8w52nqfe6kw9el1qcedzb9r3ivq6lib&rid=200w.webp&ct=s'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              right: 48,
              top: MediaQuery.of(context).size.height / 2.4,
              child: Container(
                height: 84,
                width: 84,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: backgroundColor,
                    size: 48,
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 48,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.7,
              decoration: BoxDecoration(
                  color: Color(0xff6e00db),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(42))),
            ),
          ),
          Positioned(
              left: 42,
              top: MediaQuery.of(context).size.height / 1.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Head Shaker',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_queue,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '247k Followers',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
