import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  TextEditingController userNameCtrlr = TextEditingController();
  TextEditingController emailCtrlr = TextEditingController();
  TextEditingController genderCtrlr = TextEditingController();
  TextEditingController dobCtrlr = TextEditingController();
  TextEditingController heightCtrlr = TextEditingController();
  TextEditingController weightCtrlr = TextEditingController();
  TextEditingController passwordCtrlr = TextEditingController();

  List<String> gender = [
    'Gender',
    'Male',
    'Female',
    'Transgender',
  ];
  String selectedGender = 'Gender';

  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1930, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // bool _buttonColor = true;
  // bool _button2Color = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.green,elevation: 0,),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/GreenHalf.png",
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Center(
                        child: Container(
                          height: 90,
                          width: 90,
                          child: Image.asset(
                            "assets/images/Profile_Logo.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_back_ios_new_rounded))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: userNameCtrlr,
                        decoration: InputDecoration(labelText: 'Username')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: emailCtrlr,
                        decoration: InputDecoration(labelText: 'E-Mail')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            DropdownButton(
                              value: selectedGender,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedGender = newValue.toString();
                                });
                              },
                              items: gender.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(location),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            
                            Row(
                              mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: Text("Date of Birth"),
                              ),
                                IconButton(
                                    onPressed: () {
                                      _selectDate(context);
                                     
                                    },icon: Icon(
              Icons.calendar_month_rounded,
            ),
            iconSize: 20,
            color: Colors.grey,
                                    // child: Text(selectedDate == null
                                    //     ? "Date of Birth"
                                    //     : "Date of Birth"),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Text(selectedDate == null
                                          ? ""
                                          : DateFormat('yMMMMEEEEd')
                                              .format(selectedDate!)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: heightCtrlr,
                        decoration: InputDecoration(labelText: 'Height')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: weightCtrlr,
                        decoration: InputDecoration(labelText: 'Weight')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: heightCtrlr,
                        decoration: InputDecoration(labelText: 'Password')),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                        ElevatedButton(onPressed: () {}, child: Text("Submit")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
