import 'package:flutter/material.dart';



class ColorContainer extends StatefulWidget {
  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color _selectedColor = Colors.grey;
  TextEditingController _controller = TextEditingController();

  void _changeColor(String colorName) {
    setState(() {
      _selectedColor = _parseColor(colorName);
    });
  }

  Color _parseColor(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
    
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: _selectedColor,
        ),
        SizedBox(height: 20),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Enter color (e.g., red, blue, green, yellow)',
          ),
          onChanged: (value) {
            _changeColor(value);
          },
        ),
      ],
    );
  }
}
