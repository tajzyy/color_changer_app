import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Changer'),
        ),
        body: ColorChanger(),
      ),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    setState(() {
      int red = Random().nextInt(256);
      int green = Random().nextInt(256);
      int blue = Random().nextInt(256);
      _backgroundColor = Color.fromRGBO(red, green, blue, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: Text('Change Color'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ),
      ),
    );
  }
}