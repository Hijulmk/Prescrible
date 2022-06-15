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
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/Untitleddesign.png",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            )

            ,Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg"),
                radius: 40,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: userNameCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Username')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: emailCtrlr,
                      decoration: InputDecoration(
                          labelText: 'E-Mail')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: genderCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Gender')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: dobCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Date of birth')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: heightCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Height')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: weightCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Weight')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: TextField(
                      controller: heightCtrlr,
                      decoration: InputDecoration(
                          labelText: 'Password')),
                )
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Submit")),
          )
          ],
        ),
      ),
    ));
  }
}
