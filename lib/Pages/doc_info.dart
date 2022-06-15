//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class DocInformation extends StatefulWidget {
  const DocInformation({Key? key}) : super(key: key);

  @override
  State<DocInformation> createState() => _DocInformationState();
}

class _DocInformationState extends State<DocInformation> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  //String dropdownValue = 'Treated For ';

  /*List treatmentList = [
    'Fever'
        'Cold',
    'Cough',
    'Headache',
    'Bodypain'
  ];*/
  bool _buttonColor = true;

  var images;
  pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);
    setState(() {
      images = File(pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Treatment Information")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixText: "Dr.",
                border: UnderlineInputBorder(),
                labelText: "Doctors Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Hospital ",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Treated For ",
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  height: 50,
                  child: DropdownButton<String>(
                    //dropdownColor: Colors.green,
                    //borderRadius: BorderRadius.circular(20),
                    
                    hint: Text(dropdownValue),
                    // value: dropdownValue,
                    icon: Container(
                        color: Colors.grey,
                        child: const Icon(Icons.arrow_drop_down)),
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: treatmentList
                        .map(( value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _selectDate(context);
                            setState(() => _buttonColor = false);
                          },
                          child: Text(
                              _buttonColor ? 'Select Date' : "Consulted On"),
                          style: ElevatedButton.styleFrom(
                              primary:
                                  _buttonColor ? Colors.grey : Colors.green)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(DateFormat('yMMMMEEEEd').format(selectedDate)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Row(
              children: [
                ElevatedButton(
                  child: Text(
                    "image",
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (cntxtRcv) {
                          return AlertDialog(
                              title: Center(child: Text("Choose Option")),
                              content: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          pickImage(true);
                                        },
                                        child: Icon(Icons.camera_alt)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 0, 0, 0),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          pickImage(false);
                                        },
                                        child: Icon(Icons.photo)),
                                  )
                                ],
                              ));
                        });
                  },
                ),
                images != null
                    ? Container(
                        height: 200,
                        width: 250,
                        child: Image.file(images),
                      )
                    : Container()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
          )
        ],
      ),
    );
  }
}
