import 'package:flutter/material.dart';

class TextFieldConstrainer extends StatelessWidget {

  const TextFieldConstrainer({
    Key key, @required this.hintText, @required this.icon, this.height, this.obscure = false,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final double height;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(left:30.0, right: 30.0, bottom: 20.0, top: 5.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.2),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.2),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          prefixIcon: Icon(icon),
          hintText: hintText,
        ),
        obscureText: obscure,
        obscuringCharacter: '•',
      ),
    );
  }
}

class FieldName extends StatelessWidget {
  @override

  const FieldName({
    Key key, @required this.text
  }) : super(key: key);

  final String text;

  Widget build(BuildContext context) {
    return Container(
      child:Text(text,
        style: TextStyle(
          color: Colors.grey[300],
          fontSize: 22.0,
        ),
      ),
    );
  }
}
