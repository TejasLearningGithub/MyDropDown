import 'package:flutter/material.dart';

class MyCustomDropdown extends StatefulWidget {
  String? selectedValue;
  String? myText;
  List<DropdownMenuItem<String>> myDropdownItem;
  MyCustomDropdown(
      {super.key,
      required this.selectedValue,
      required this.myDropdownItem,
      required this.myText});

  @override
  State<MyCustomDropdown> createState() => _MyCustomDropdownState();
}

class _MyCustomDropdownState extends State<MyCustomDropdown> {
  //

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Container(
              height: 51,
              child: DropdownButtonFormField<String>(
                
                  itemHeight: 51,
                  // itemHeight: 21,
                  icon: Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  style: TextStyle(fontSize: 10, color: Colors.blue),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(100, 221, 221, 221),
                    hintStyle: TextStyle(
                      fontSize: 7,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //filled: true,
                    //fillColor: Colors.blueAccent,
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                  ),
                  validator: (value) => value == null || value == ''
                      ? "Please Select ${widget.myText}"
                      : null,
                  //dropdownColor: Colors.blueAccent,
                  value: widget.selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.selectedValue = newValue!;
                    });

                    print('======' + widget.selectedValue!);
                  },
                  items: widget.myDropdownItem),
            ),
          ],
        ));
  }
}