import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePge extends StatefulWidget {
  static final String id = 'home';

  @override
  _HomePgeState createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Text('welcome').tr(),
            )),
            Row(
              children: [
                FlatButton(
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                    color: Colors.green,
                    child: Text(
                      'English',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(width: 10),
                FlatButton(
                    onPressed: () {
                      context.locale = Locale('uz', 'UZ');
                    },
                    color: Colors.blue,
                    child: Text(
                      'Uzbek',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(width: 10),
                FlatButton(
                    onPressed: () {
                      context.locale = Locale('ru', 'RU');
                    },
                    color: Colors.red,
                    child: Text(
                      'Russian',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(width: 10),
                FlatButton(
                    onPressed: () {
                      context.locale = Locale('fr', 'FR');
                    },
                    color: Colors.orange,
                    child: Text(
                      'French',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
