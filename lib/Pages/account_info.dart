import 'package:flutter/material.dart';

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
                    child: TextField(
                        controller: genderCtrlr,
                        decoration: InputDecoration(labelText: 'Gender')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                        controller: dobCtrlr,
                        decoration:
                            InputDecoration(labelText: 'Date of birth')),
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
