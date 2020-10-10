import 'package:example0_custom_app_bar/customAppBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          child: Center(
            child: Text("Drawer Area"),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          child: Center(
            child: Text("EndDrawer Area"),
          ),
        ),
      ),
      body: Column(
        children: [CustomAppBar(title: "Custom Gradient AppBar"), Container()],
      ),
    );
  }
}
