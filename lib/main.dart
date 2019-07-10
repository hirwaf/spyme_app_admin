import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sypme Trucker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SpyMe Trucker Admin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: "http://spyme.hschool.tk/admin/login",
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
          )
      ),
      withZoom: false,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.transparent,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
