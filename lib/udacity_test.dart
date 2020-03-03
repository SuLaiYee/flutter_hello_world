import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.greenAccent,
      width: 300,
        height: 400,
      child: Center(
        child: Text(
          'Hello',
           style: TextStyle(fontSize: 40, color: Colors.blue),
        ),
      ),
    );
  }
}
