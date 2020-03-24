import 'package:flutter/material.dart';
import 'package:flutterlistdemo/gallerytab.dart';
import 'package:flutterlistdemo/listtab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
      child: Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: 'Gallery'),
            Tab(text: 'List'),
          ],
        ),
    ),
    body: TabBarView(
        children: <Widget>[
          gallerytab(),
          listtab()
        ],
    ),
      ),
    );// This trailing comma makes auto-formatting nicer for build methods.
  }

  }
