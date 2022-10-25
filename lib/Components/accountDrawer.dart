import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 35,
                        child: Icon(
                          Icons.person_sharp,
                          color: Colors.black26,
                          size: 70,
                        )),
                    Icon(Icons.copy)
                  ],
                ),
              ),
            ),
            const Text(
              'MyAccount',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text('@gmail.com'),
            const Text('230フォロー　302フォロワー'),
            ListTile(
              title: Text('プロフィール'),
              leading: Icon(
                Icons.person,
              ),
            ),
            ListTile(
              title: Text('リスト'),
              leading: Icon(
                Icons.article,
              ),
            ),
            ListTile(
              title: Text('トピック'),
              leading: Icon(
                Icons.sms,
              ),
            ),
            ListTile(
              title: Text('ブックマーク'),
              leading: Icon(
                Icons.bookmark_border,
              ),
            ),
            ListTile(
              title: Text('モーメント'),
              leading: Icon(
                Icons.flash_on,
              ),
            ),
            ListTile(
              title: Text('購入内容'),
              leading: Icon(
                Icons.shopping_cart,
              ),
            ),
            ListTile(
              title: Text('収益を得る'),
              leading: Icon(
                Icons.payments,
              ),
            ),
            ListTile(
              title: Text('フォローリクエスト'),
              leading: Icon(
                Icons.person_add_alt,
              ),
            ),
            Container(
              height: 0.5,
              width: 300,
              color: Color(0xFF757575),
            ),
            ListTile(
              title: Text('Twitter　Pro'),
              leading: Icon(
                Icons.rocket_launch,
              ),
            ),
            Container(
              height: 0.5,
              width: 300,
              color: Color(0xFF757575),
            ),
            ListTile(
              title: Text('設定とプライバシー'),
            ),
            ListTile(
              title: Text('ヘルプセンター'),
            ),
          ],
        ),
      ),
    );
  }
}
