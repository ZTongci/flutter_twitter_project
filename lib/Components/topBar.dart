import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_twitter_project/Screen/homeScreen.dart';
import 'package:provider/provider.dart';

class topBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.2),
      child: Container(
        height: 50,
        color: Colors.white54,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(
                  Icons.account_circle_rounded,
                ),
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              Provider.of<contentsData>(context).topMiddle(),
              Provider.of<contentsData>(context).topRight(),
            ],
          ),
        ),
      ),
    );
  }
}
