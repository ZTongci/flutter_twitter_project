import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Moduel/bottom_button_action.dart';
import 'package:flutter_twitter_project/Screen/setUpScreen2.dart';
import 'package:flutter_twitter_project/main.dart';
import "package:provider/provider.dart";

class setUpScreen extends StatelessWidget {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 0.2),
              child: Container(
                height: 50,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 18,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => setUpScreen2()));
                        },
                      ),
                      Text(
                        '[話題を検索]の設定',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      GestureDetector(
                        child: Text(
                          '完了',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyApp()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                '位置情報',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                '現在の場所のコンテンツを表示',
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                'オンにすると、身の回りで「いま」起きていることを見つけることができます。',
                style: TextStyle(fontSize: 12),
              ),
              trailing: Switch(
                // This bool value toggles the switch.
                value: true,
                activeColor: Colors.lightGreen,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  // setState(() {
                  // light = value;
                  // });
                },
                // Icon(Icons.toggle_on,size: 60),
              ),
            ),
            ListTile(
              subtitle: Text(
                '場所を調べる',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
