import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextFieldOne(),
                SizedBox(
                  height: 30,
                ),
                TextFieldTwo(),
              ],
            ),
          ),
        ));
  }
}

class TextFieldOne extends StatelessWidget {
  const TextFieldOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.done,
      autofocus: false,
      decoration: InputDecoration(
        helperText: 'Поле для имени пользователя',
        suffixIcon: Icon(
          Icons.person,
          color: Colors.cyan,
        ),
        hintText: 'Введите значение',
        labelText: 'Имя пользователя',
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2,
            )),
      ),
    );
  }
}

class TextFieldTwo extends StatelessWidget {
  const TextFieldTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        helperText: 'Поле для ввода пароля',
        suffixIcon: Icon(
          Icons.password,
          color: Colors.cyan,
        ),
        hintText: 'Введите значение',
        labelText: 'Пароль',
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2,
            )),
      ),
    );
  }
}
