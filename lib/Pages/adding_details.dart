import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:prescrible/Pages/homepage.dart';

class Trtmnt_addingPG extends StatefulWidget {
  const Trtmnt_addingPG({Key? key}) : super(key: key);

  @override
  State<Trtmnt_addingPG> createState() => _Trtmnt_addingPGState();
}

class _Trtmnt_addingPGState extends State<Trtmnt_addingPG> {



DateTime? selectedDate;
  
Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime.now());
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
  bool _button2Color = true;

  pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);
    setState(() {
      imgLst.add(pickedImage!);
    });
  }

  List imgLst = [];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Treatment Information"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                                selectedDate==null ? "Select Date" : "Consulted On"),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    selectedDate == null ? Colors.grey : Colors.green)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
                          child: Row(
                            children: [
                              Text(selectedDate == null ?"" :DateFormat('yMMMMEEEEd')
                                  .format(selectedDate!)),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: imgLst.isEmpty ? Colors.grey : Colors.green),
                    child: Text(
                      "image",
                    ),
                    onPressed: () {
                      setState(() => _button2Color = false);
                      showDialog(
                          context: context,
                          builder: (cntxtRcv) {
                            return AlertDialog(
                                title: Center(child: Text("Choose Option")),
                                content: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 0, 0, 0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            pickImage(true);
                                            Navigator.pop(context);
                                          },
                                          child: Icon(Icons.camera_alt)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          40, 0, 0, 0),
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
                  imgLst != null
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            child: Container(
                              height: 200,
                              width: 145,
                              child: ListView.builder(
                                  itemCount: imgLst.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        margin: EdgeInsets.all(3),
                                        color: Colors.grey.shade200,
                                        height: 25,
                                        child: Center(
                                            child:
                                                Text("image -${index + 1}")));
                                  }),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15,100,15,15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                    iconSize: 30,
                    color: Colors.grey,
                    splashColor: Colors.green,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        ElevatedButton(onPressed: () {
                          Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => Hm()),);
                        }, child: Text("Submit")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
