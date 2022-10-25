import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_twitter_project/Components/createContens.dart';
import 'package:flutter_twitter_project/main.dart';

class addContensScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'キャンセル',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                          width: 70,
                          height: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              try {
                                Provider.of<contentsData>(context,
                                        listen: false)
                                    .addListContensImage(createContens(
                                        contents: Provider.of<contentsData>(
                                                context,
                                                listen: false)
                                            .submitContens));
                                Navigator.pop(context);
                              } catch (e) {
                                Navigator.pop(context);
                              }
                              ;
                            },
                            child: const Center(
                                child: Text(
                              '発送',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(
                      Icons.person_sharp,
                      color: Colors.black26,
                      size: 40,
                    )),
                Expanded(
                  flex: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.lightBlueAccent),
                              ),
                              child: const Center(
                                  child: Text(
                                '公開',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.lightBlueAccent),
                                textAlign: TextAlign.center,
                              ))),
                        ),
                        Container(
                          child: TextField(
                              onChanged: (value) {
                                Provider.of<contentsData>(context,
                                        listen: false)
                                    .changeValue(value);
                              },
                              decoration: const InputDecoration(
                                  hintText: '何を発送したい？',
                                  hintStyle: TextStyle(fontSize: 20),
                                  border: InputBorder.none)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
