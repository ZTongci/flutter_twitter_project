import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class createContens extends StatelessWidget {
  createContens({required this.contents});
  final String contents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.2),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'MyAccount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(contents)
                      ],
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
