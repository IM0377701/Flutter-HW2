import 'package:flutter/material.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  bool isPressed = false;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 2'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 200,

          // WILL NEED TO MODIFY THIS LINE
          icon: isPressed
              ? Icon(
                  Icons.favorite_border,
                )
              : Icon(Icons.favorite, color: Colors.red),

          onPressed: () {
            // ADD YOUR CODE HERE
            setState(() {
              isPressed = !isPressed;
            });
          },
        ),
      ),
    ));
  }
}
