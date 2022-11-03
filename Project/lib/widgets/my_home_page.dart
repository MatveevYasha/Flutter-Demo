import 'package:flutter/material.dart';
import 'package:project/widgets/my_drawer.dart';
import 'package:project/widgets/my_end_drawer.dart';
import 'package:project/widgets/my_floating_action_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openEndDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.person),
            );
          })
        ],
      ),
      body: Center(
        child: FlutterLogo(
          size: 250,
          style: FlutterLogoStyle.stacked,
        ),
      ),
      drawer: MyDrawer(),
      endDrawer: MyEndDrawer(),
      floatingActionButton: MyFloatingActionButton(),
    );
    return scaffold;
  }
}
