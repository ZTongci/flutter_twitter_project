import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_twitter_project/main.dart';
import '../Components/contentsImage.dart';
import '../Components/twitterReflash.dart';
import '../main.dart';

class ceateContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Provider.of<contentsData>(context, listen: false)
            .addListContensImage(contentsImage(
                countName: 'Yahoo Finance',
                contentImageName: 'yahoofinace$countImage',
                countImageName: 'images$countImage'));
        if (countImage < contentMax) {
          countImage++;
        }
      },
      child: ListView.builder(
        itemBuilder: (context, int index) {
          return Provider.of<contentsData>(context).listContens[index];
        },
        itemCount: Provider.of<contentsData>(context).listContens.length,
      ),
    );
  }
}
