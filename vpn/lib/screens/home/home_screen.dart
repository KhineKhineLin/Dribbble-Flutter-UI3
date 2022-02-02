import 'package:flutter/material.dart';
import 'package:vpn/constants.dart';
import 'package:vpn/screens/language/language_screen.dart';
import 'package:vpn/screens/server/server_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isactive = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: secondryColor),
        actionsIconTheme: const IconThemeData(color: secondryColor),
        title: const Text(
          'Khi VPN',
          style: TextStyle(color: secondryColor),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Khi VPN',
                  style: TextStyle(
                      color: kPrimaryClr,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen())),
              leading: const Icon(
                Icons.translate,
                color: Colors.black,
              ),
              title: const Text(
                'Change Language',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: (){},
              leading: const Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              title: const Text(
                "Rate US",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: (){},
              leading: const Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: const Text(
                'Share App',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: (){},
              leading: const Icon(
                Icons.all_inbox_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            const Spacer(),
            const Text(
              'V 1.0.0',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.11,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: kPrimaryClr, shape: BoxShape.circle),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                          color: kWhiteClr, shape: BoxShape.circle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color: isactive == true ? kPrimaryClr : Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            isactive == true ? 'STOP' : 'START',
                            style: TextStyle(
                                color: isactive == true
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.11,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: isactive == true
                      ? kPrimaryClr
                      : kPrimaryClr.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  isactive == true ? 'Conncected' : 'Not Connected',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: secondryColor),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServerScreen())),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kWhiteClr,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Select Location',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: secondryColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: secondryColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.2),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Download',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secondryColor),
                      ),
                      Text(
                        isactive == true ? '128kb' : '0,0kb',
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.2),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Upload',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secondryColor),
                      ),
                      Text(
                        isactive == true ? '128kb' : '0,0kb',
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
