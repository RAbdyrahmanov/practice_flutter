import 'package:flutter/material.dart';

class PersonalInfoForm extends StatefulWidget {
  @override
  _PersonalInfoFormState createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm> {
  String _firstName = '';
  String _lastName = '';
  int _age = 0;

  void _updateFirstName(String value) {
    setState(() {
      _firstName = value;
    });
  }

  void _updateLastName(String value) {
    setState(() {
      _lastName = value;
    });
  }

  void _updateAge(String value) {
    setState(() {
      _age = int.tryParse(value) ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Инфо о клиенте',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'фамилия'),
            onChanged: _updateFirstName,
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: 'имя'),
            onChanged: _updateLastName,
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: 'возраст'),
            onChanged: _updateAge,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          Text(
            'фамилия: $_firstName',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'имя: $_lastName',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'возраст: $_age',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
