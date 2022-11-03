import 'package:flutter/material.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image(
              width: 200,
              height: 200,
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/000/457/240/original/man-with-mobile-phone-illustration-set-modern-flat-design-concept-of-web-page-design-for-website-and-mobile-website-vector-illustration.jpg'),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            'Информация о пользователе',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
