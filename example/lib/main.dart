import 'package:flutter/material.dart';
import 'package:crisp/crisp.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CrispMain crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: '11385bfa-3cf8-4a0f-beba-44629aec6779',
      locale: 'pt-br',
    );

    crispMain.register(
      user: CrispUser(
        email: "leo@provider.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "João Cardoso",
        phone: "5511987654321",
      ),
    );

    crispMain.setMessage("Hello world");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CrispView(
        appBar: AppBar(
          title: const Text('Widget WebView'),
        ),
        loadingWidget: Center(
          child: CircularProgressIndicator(),
        ),
        crispMain: crispMain,
      ),
    );
  }
}
