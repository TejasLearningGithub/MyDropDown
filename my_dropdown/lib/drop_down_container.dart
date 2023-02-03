import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DropDownContainer extends StatefulWidget {
  const DropDownContainer({super.key});

  @override
  State<DropDownContainer> createState() => _DropDownContainerState();
}

class _DropDownContainerState extends State<DropDownContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Style Dropdown Button"),
          backgroundColor: Colors.redAccent),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          height: 340,
          width: 370,
          child: Card(
            color: Colors.blue,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: DropdownButton(
                      
                      value: "United Kingdom",
                      items: const [
                        //add items in the dropdown
                        DropdownMenuItem(
                          child: Text(
                            "United Kingdom",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                          value: "United Kingdom",
                        ),
                        DropdownMenuItem(
                            child: Text("Canada"), value: "Canada"),
                        DropdownMenuItem(
                          child: Text("Russia"),
                          value: "Russia",
                        )
                      ],
                      onChanged: (value) {
                        //get value when changed
                        print("You have selected $value");
                      },
                      icon: Padding(
                          //Icon at tail, arrow bottom is default icon
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_circle_down_sharp)),
                      iconEnabledColor: Colors.white, //Icon color
                      style: TextStyle(
                          //te
                          color: Colors.white, //Font color
                          fontSize: 20 //font size on dropdown button
                          ),

                      dropdownColor:
                          Colors.redAccent, //dropdown background color
                      underline: Container(), //remove underline
                      isExpanded: true, //make true to make width 100%
                      
                    ),
                  ),
                ),
                Divider(),
                // Container(
                //   width: 330,
                //   child: DecoratedBox(
                //     decoration: BoxDecoration(
                //         gradient: LinearGradient(colors: [
                //           Colors.redAccent,
                //           Colors.blueAccent,
                //           Colors.purpleAccent
                //           //add more colors
                //         ]),
                //         borderRadius: BorderRadius.circular(5),
                //         boxShadow: <BoxShadow>[
                //           BoxShadow(
                //               color: Color.fromRGBO(
                //                   0, 0, 0, 0.57), //shadow for button
                //               blurRadius: 5) //blur radius of shadow
                //         ]),
                //     child: Padding(
                //       padding: EdgeInsets.only(left: 30, right: 30),
                //       child: DropdownButton(
                //         value: "menuone",
                //         items: [
                //           DropdownMenuItem(
                //             child: Text("Menu One"),
                //             value: "menuone",
                //           )
                //         ],
                //         onChanged: (value) {},
                //         isExpanded:
                //             true, //make true to take width of parent widget
                //         underline: Container(), //empty line
                //         style: TextStyle(fontSize: 18, color: Colors.white),
                //         dropdownColor: Colors.green,
                //         iconEnabledColor: Colors.white, //Icon color
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
