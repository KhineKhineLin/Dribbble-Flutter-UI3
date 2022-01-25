import 'package:flutter/material.dart';

class Product {
  final String title, desc;
  final Color color;
  Product({required this.title, required this.desc, required this.color});
}

List<Product> products = [
  Product(
      title: 'Health',
      desc:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      color: Color(0xFF71b8ff)),
  Product(
      title: 'Food',
      desc:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      color: Color(0xFFff6374)),
  Product(
      title: 'Shop list',
      desc:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      color: Color(0xFFffaa5b)),
  Product(
      title: 'Team meeting',
      desc:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      color: Color(0xFF9ba0fc))
];
