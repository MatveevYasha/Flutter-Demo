import 'package:flutter/material.dart';
import 'package:project/widgets/my_home_page.dart';
import 'package:project/widgets/my_image.dart';
import 'package:project/widgets/my_list.dart';
import 'package:project/widgets/my_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
      routes: {
        '/widgets/my_home_page': (context) => MyHomePage(title: 'Flutter Demo'),
        '/widgets/my_list': (context) => MyList(),
        '/widgets/my_text_field': (context) => MyTextField(),
        '/widgets/my_image': (context) => MyImage(),
      },
      initialRoute: '/widgets/my_home_page',
    );
  }
}
