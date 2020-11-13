import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Color(0xFF0e1023),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35.0, color: Colors.white),
            onPressed: (){
              Navigator.of(context).pop();
            }
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('images/chat.jpg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
