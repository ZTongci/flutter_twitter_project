import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Screen/homeScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_twitter_project/Components/contentsVideo.dart';
import 'package:flutter_twitter_project/Screen/starContainer.dart';
import 'package:flutter_twitter_project/Screen/homeScreen.dart';
import 'package:flutter_twitter_project/Components/contentsImage.dart';
import 'package:flutter_twitter_project/Moduel/bottom_button_action.dart';
import 'package:flutter_twitter_project/Components/twitterReflash.dart';
import 'Components/setUpIcons.dart';
import 'Moduel/ceateContents.dart';
import 'package:flutter_twitter_project/Screen/searchLIstView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<contentsData>(
      create: (context) => contentsData(),
      child: MaterialApp(home: homeScreen()),
    );
  }
}

class contentsData extends ChangeNotifier with bottom_button_action {
  List<Widget> listContens = [
    contentsImage(
        countName: 'Made By ：張 桐慈',
        contentImageName: 'Twitter',
        countImageName: 'me'),
    contentsVideo(),
  ];

  late String submitContens;

  void changeValue(String contens) {
    submitContens = contens;
    notifyListeners();
  }

  Future<void> addListContensImage(var contens) async {
    listContens.add(contens);
    notifyListeners();
  }

  Widget topMiddle() {
    if (search == actionsearch) {
      return const Expanded(
          child: TextField(
        decoration: InputDecoration(hintText: 'Twitterを探す'),
        textAlign: TextAlign.center,
      ));
    } else if (notifications == actionnotifications) {
      return const Text(
        '通知',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      );
    } else if (mail == actionmail) {
      return const Text(
        'メッセージ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      );
    } else {
      return twitterReflash();
    }
  }

  Widget topRight() {
    if (notifications == actionnotifications ||
        search == actionsearch ||
        mail == actionmail) {
      return setUpIcons();
    } else {
      return starContainer();
    }
  }

  Widget middleScreen() {
    if (search == actionsearch) {
      return Container(child: searchListView());
    } else if (notifications == actionnotifications) {
      return Container();
    } else if (mail == actionmail) {
      return Container();
    } else {
      return Container(
        color: Colors.white,
        child: ceateContents(),
      );
    }
  }

  void touchhome() {
    if (home != actionhome) {
      home = actionhome;
      search = noactionsearch;
      notifications = noactionnotifications;
      mail = noactionmail;
    }
    notifyListeners();
  }

  void touchsearch() {
    if (search != actionsearch) {
      home = noactionhome;
      search = actionsearch;
      notifications = noactionnotifications;
      mail = noactionmail;
    }
    notifyListeners();
  }

  void touchnotifications() {
    if (notifications != actionnotifications) {
      home = noactionhome;
      search = noactionsearch;
      notifications = actionnotifications;
      mail = noactionmail;
    }
    notifyListeners();
  }

  void touchmail() {
    if (mail != actionnotifications) {
      home = noactionhome;
      search = noactionsearch;
      notifications = noactionnotifications;
      mail = actionmail;
    }
    notifyListeners();
  }
}
