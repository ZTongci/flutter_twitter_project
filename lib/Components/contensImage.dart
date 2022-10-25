import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class contentsImage extends StatelessWidget {
  contentsImage(
      {required this.countName,
      required this.contentImageName,
      required this.countImageName});
  final String contentImageName;
  final String countName;
  final String countImageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/$countImageName.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(countName),
                        SizedBox(
                          height: 20,
                        ),
                        Image(
                            image: AssetImage('images/$contentImageName.png')),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 300,
          height: 0.2,
          color: Color(0xFF757575),
        ),
      ],
    );
  }
}
