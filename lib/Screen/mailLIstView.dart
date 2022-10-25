import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              //トップニュースを表示
              Image.asset('images/weather.png'),
              Text(
                '台風11号　九州で厳重な警戒が必要　気象庁',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                height: 0.5,
                width: 300,
                color: Color(0xFF757575),
              ),

              //広告を表示
              ListTile(
                title: Text('#やっちゃえ　NISSAN'),
                subtitle: Text('木村拓哉さん＆松たか子さんのドライブトーク。特別ムービー公開中'),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),

              //トレンドをリスト表示
              ListTile(
                title: Text('ニュース・トレンド \n'
                    '臨時休校'),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),

              ListTile(
                title: Text('国際ニュース・ライブ \n'
                    'ロシアによるウクライナへの侵攻状況'),
                trailing: Image.asset(
                  'images/images01.jpg',
                  height: 75,
                  width: 75,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ListTile(
                title: Text('天気・ライブ \n'
                    '台風11号　九州で厳重な警戒が必要　気象庁'),
                subtitle: Text('トレンドピックアップ：台風の影響'),
                trailing: Image.asset(
                  'images/download.jpg',
                  height: 75,
                  width: 75,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ListTile(
                title: Text('音楽トレンド \n'
                    'RIDE ON TIME'),
                subtitle: Text('7720件のツイート'),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      'images/rideontime.png',
                      height: 75,
                      width: 500,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),

              ListTile(
                title: Text('音楽トレンド \n'
                    'さくピース'),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),

              ListTile(
                title: Text('音楽・ライブ \n'
                    '5日は故フレディ・マーキュリーさんの誕生日🍰'),
                subtitle: Text('トレンドピックアップ：#FreddieMercury'),
                trailing: Image.asset(
                  'images/download2.jpg',
                  height: 75,
                  width: 75,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ListTile(
                title: Text('トレンド \n'
                    '篠原涼子さん'),
                subtitle: Text('1238件のツイート'),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),

              ListTile(
                title: Text('エンターテイメント・トレンド \n'
                    'リヴァイ'),
                subtitle: Text('トレンドピックアップ：アルミン、進撃ミュ'),
                trailing: Icon(
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
