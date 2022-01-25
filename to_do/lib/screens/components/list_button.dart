import 'package:flutter/material.dart';
class ListButtonContainer extends StatelessWidget {
  const ListButtonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          ListsButton(
            isActive: true,
            title: 'Notes',
            press: () {},
          ),
          ListsButton(title: 'To Do', press: () {}),
          ListsButton(title: 'Blog', press: () {})
        ],
      ),
    );
  }
}

class ListsButton extends StatelessWidget {
  ListsButton(
      {Key? key,
      required this.title,
      required this.press,
      this.isActive = false})
      : super(key: key);
  final String title;
  final VoidCallback press;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 19,
              color: isActive == true ? Colors.blue[400] : Colors.black54,
              fontWeight:
                  isActive == true ? FontWeight.bold : FontWeight.normal),
        ));
  }
}
