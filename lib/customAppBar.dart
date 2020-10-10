import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() =>
      CustomAppBarState(this.title);
}

class CustomAppBarState extends State<CustomAppBar> with PreferredSizeWidget {
  CustomAppBarState(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight * 2.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.redAccent, Colors.purpleAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0, 1],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            // LEADING
            icon: Icon(Icons.person),
            onPressed: () => {
              Scaffold.of(context).openDrawer()
            },
            color: Colors.white,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: statusBarHeight * 0.5),
          ),
          IconButton(
            // MENU
            icon: Icon(Icons.menu),
            onPressed: () => {
              Scaffold.of(context).openEndDrawer()
            },
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  Key get key => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  String toStringDeep(
      {String prefixLineOne = '',
      String prefixOtherLines,
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }
}
