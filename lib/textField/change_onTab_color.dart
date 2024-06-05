import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color _selectedColor = Colors.grey;

  void _changeColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => _changeColor(Colors.red),
          child: Container(
            width: 200,
            height: 200,
            color: _selectedColor,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () => _changeColor(Colors.blue),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              onTap: () => _changeColor(Colors.green),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
            GestureDetector(
              onTap: () => _changeColor(Colors.yellow),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ],
    );
  }
}