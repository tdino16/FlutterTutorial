import 'package:flutter/material.dart';
import 'TopPage0.dart';

void main() {
  runApp(MyApp());
}

/// MyAppクラス
///
///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/// MyHomePageクラス
///
///
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          // TODO 画面を追加していく
          ListTile(
            title: const Text("setStateの場合"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopPage0(),
                    fullscreenDialog: true,
                  ));
            },
          ),
        ],
      ),
    );
  }
}


