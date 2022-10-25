import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Moduel/bottom_button_action.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class bottom_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Provider.of<contentsData>(context, listen: false).touchhome();
                },
                child: Provider.of<contentsData>(context).home),
            GestureDetector(
                onTap: () {
                  Provider.of<contentsData>(context, listen: false)
                      .touchsearch();
                },
                child: Provider.of<contentsData>(context).search),
            GestureDetector(
                onTap: () {
                  Provider.of<contentsData>(context, listen: false)
                      .touchnotifications();
                },
                child: Provider.of<contentsData>(context).notifications),
            GestureDetector(
              onTap: () {
                Provider.of<contentsData>(context, listen: false).touchmail();
              },
              child: Provider.of<contentsData>(context).mail,
            )
          ],
        ),
      ),
    );
  }
}
