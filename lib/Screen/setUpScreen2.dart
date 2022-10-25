import 'package:flutter/material.dart';
import 'package:flutter_twitter_project/Screen/searchLIstView.dart';
import 'package:flutter_twitter_project/Screen/setUpScreen.dart';

void main() {
  runApp(setUpScreen2());
}

class setUpScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('検索'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setUpScreen()));
              },
              child: const Text(
                '完了',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('アカウント'),
                subtitle: Text(
                    'アカウントについての情報を確認したり、データのアーカイブをダウンロードしたり、アカウント停止オプションの詳細を確認したりできます。'),
                leading: Icon(
                  Icons.person,
                ),
              ),
              ListTile(
                title: Text('セキュリティとアカウントアクセス'),
                subtitle: Text(
                    'アカウントのセキュリティを管理したり、アカウントと連携したアプリなどのアカウントによる使用を追跡したりします。'),
                leading: Icon(
                  Icons.lock,
                ),
              ),
              ListTile(
                title: Text('収益を得る'),
                subtitle: Text('Twitterで収益を得る方法や収益オプションの管理方法をご覧ください。'),
                leading: Icon(
                  Icons.payment,
                ),
              ),
              ListTile(
                title: Text('プライバシーと安全'),
                subtitle: Text('Twitterで表示および共有する情報を管理します。'),
                leading: Icon(
                  Icons.shield,
                ),
              ),
              ListTile(
                title: Text('通知'),
                subtitle: Text('アクティビティ、興味関心、おすすめについて受け取る通知の種類を選択します。'),
                leading: Icon(
                  Icons.notifications,
                ),
              ),
              ListTile(
                title: Text('アクセシビリティ、表示、言語'),
                subtitle: Text('Twitterコンテンツの表示方法を管理します。'),
                leading: Icon(
                  Icons.accessibility,
                ),
              ),
              ListTile(
                title: Text('その他のリソース'),
                subtitle: Text('Twitter製品やサービスについての役立つ情報を確認できます。'),
                leading: Icon(
                  Icons.more_horiz,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
