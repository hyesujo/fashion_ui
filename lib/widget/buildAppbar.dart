import 'package:blue_ui/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: false,
    elevation: 0.0,
    title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Lookbook',
        style: TextStyle(
            fontSize: 35, color: kTextColor, fontWeight: FontWeight.bold),
      ),
      Text(
        'photoGrapy',
        style: TextStyle(color: Colors.grey[600], fontSize: 12),
      ),
    ]),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          icon: Image.asset('assets/icons/search.png'),
          onPressed: () {},
        ),
      ),
    ],
  );
}
