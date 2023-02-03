import 'package:flutter/material.dart';

class ImplDropdown extends StatefulWidget {
  const ImplDropdown({super.key});

  @override
  State<ImplDropdown> createState() => _ImplDropdownState();
}

class _ImplDropdownState extends State<ImplDropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Container(
            height: 50.0,
            width: 200.0,
            child: DropdownButton(
              
              value: '',
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              isExpanded: true,
              style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              //  onChanged: (String newValue) {
              //    setState(() {
              //      dropdownValue = newValue;
              //    });
              //  },
              onChanged: (val) {},
              
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )));
  }
}
