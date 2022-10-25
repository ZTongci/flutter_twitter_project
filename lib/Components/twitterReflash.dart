import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_twitter_project/main.dart';
import 'contentsImage.dart';

const int contentMax = 10;
int countImage = 1;

class twitterReflash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<contentsData>(context, listen: false).addListContensImage(
            contentsImage(
                countName: 'YahooFinace',
                contentImageName: 'yahoofinace$countImage',
                countImageName: 'images$countImage'));
        if (countImage < contentMax) {
          countImage++;
        }
      },
      child: const Image(
        image: AssetImage('images/Twitter_Icons.png'),
        width: 50,
      ),
    );
  }
}
