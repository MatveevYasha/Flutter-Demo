import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://www.2dsl.ru/wp-content/uploads/2012/02/24.jpg'),
          )),
          ListTile(
            title: Text('Список'),
            leading: Icon(Icons.list),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed('/widgets/my_list');
            },
          ),
          ListTile(
            title: Text('Images'),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed('/widgets/my_image');
            },
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/widgets/my_home_page');
                  },
                  child: Text('Выход'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/widgets/my_text_field');
                  },
                  child: Text('Регистрация'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
          ),
        ],
      ),
    );
  }
}
