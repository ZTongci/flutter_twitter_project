import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Screen/setUpScreen.dart';

class setUpIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => setUpScreen()));
        },
        child: Icon(Icons.settings));
  }
}
