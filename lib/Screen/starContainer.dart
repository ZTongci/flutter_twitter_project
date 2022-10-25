import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class starContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(
        Icons.star_border_purple500_rounded,
        size: 35,
      ),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            color: const Color(0xFF757575),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star_purple500_sharp,
                      size: 90,
                      color: Colors.blueAccent,
                    ),
                    Text(
                      'Thank you for your visting',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
