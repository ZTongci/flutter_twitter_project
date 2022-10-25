import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Components/contentsImage.dart';
import 'package:flutter_twitter_project/main.dart';
import '../Components/contentsImage.dart';
import '../Components/topBar.dart';
import '../Moduel/ceateContents.dart';
import 'package:provider/provider.dart';

import '../main.dart';

const int _contentMax = 4;
int countImage = 1;

class mainPage extends StatefulWidget {
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int countImage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<contentsData>(context, listen: false).addListContensImage(
              contentsImage(
                  countName: 'Systena',
                  contentImageName: 'systena$countImage',
                  countImageName: 'images$countImage'));
          if (countImage < _contentMax) {
            countImage++;
          }
        },
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            topBar(),
            Expanded(
              child: Container(
                child: ceateContents(),
                color: Color(0xFF757575),
              ),
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home_outlined),
                    Icon(Icons.search),
                    Icon(Icons.notifications_none),
                    Icon(Icons.mail_outline),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
