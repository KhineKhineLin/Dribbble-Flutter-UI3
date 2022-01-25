import 'package:flutter/material.dart';
import 'package:to_do/model/list_model.dart';

import 'components/bottombar.dart';
import 'components/custom_appbar.dart';
import 'components/list_button.dart';
import 'components/list_data.dart';
import 'components/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
        child: ListView(
          children: const [
            CustomAppBar(),
            SearchBar(),
            ListButtonContainer(),
            Listdata()
          ],
        ),
      ),
    );
  }
}

