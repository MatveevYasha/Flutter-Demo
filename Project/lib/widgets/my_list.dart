import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  var listData = List.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.all(25),
              child: Text('$index'),
            );
          }),
          separatorBuilder: ((context, index) {
            return Container(
              color: Color.fromARGB(255, 214, 212, 212),
              height: 1,
            );
          }),
          itemCount: listData.length,
        ),
      ),
    );
  }
}
