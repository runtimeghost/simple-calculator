import 'package:flutter/material.dart';

class CalcAppbar extends AppBar {
  final String name;
  CalcAppbar(this.name, {super.key})
    : super(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () => debugPrint("Clicked Menu"),
            icon: Icon(Icons.more_vert),
          ),
        ],
      );
}
