import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MyImage extends StatefulWidget {
  MyImage({Key? key}) : super(key: key);

  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  Map<String, List<String>> data = {
    'Мои фото': [
      'https://picsum.photos/1200/501',
      'https://picsum.photos/1200/502',
      'https://picsum.photos/1200/503',
      'https://picsum.photos/1200/504',
      'https://picsum.photos/1200/505',
      'https://picsum.photos/1200/506',
      'https://picsum.photos/1200/507',
      'https://picsum.photos/1200/508',
      'https://picsum.photos/1200/509',
      'https://picsum.photos/1200/510',
    ],
    'Галерея': [
      'https://picsum.photos/1200/511',
      'https://picsum.photos/1200/512',
      'https://picsum.photos/1200/513',
      'https://picsum.photos/1200/514',
      'https://picsum.photos/1200/515',
      'https://picsum.photos/1200/516',
      'https://picsum.photos/1200/517',
      'https://picsum.photos/1200/518',
      'https://picsum.photos/1200/519',
      'https://picsum.photos/1200/520',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: data.keys.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: TabBarView(
          children: data.keys.map((name) {
            return ListView.builder(
              itemBuilder: (BuildContext context, index) {
                return FadeInImage.assetNetwork(
                  placeholder: 'assets/images/placeholder.png',
                  image: data[name]![index],
                );
              },
              itemCount: data.values.first.length,
              key: PageStorageKey(data.keys),
            );
          }).toList(),
        ),
      ),
    );
  }
}
