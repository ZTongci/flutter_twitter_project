import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Screen/addContensScreen.dart';
import 'package:flutter_twitter_project/main.dart';
import '../Components/accountDrawer.dart';
import '../Components/bottom_bar.dart';
import '../Components/topBar.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer: accountDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            topBar(),
            Expanded(
              child: Stack(
                children: [
                  Provider.of<contentsData>(context).middleScreen(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addContensScreen()));
                          },
                          child: const Icon(Icons.add),
                        ),
                      )),
                ],
              ),
            ),
            bottom_bar(),
          ],
        ),
      ),
    );
  }
}
