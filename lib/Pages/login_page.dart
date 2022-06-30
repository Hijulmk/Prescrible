import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prescrible/Pages/sign_up_page.dart';
import 'package:prescrible/Widgets/my_button.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

final username = TextEditingController();
final passwrd = TextEditingController();

class _LoginPgState extends State<LoginPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/images/BgImg1.jpg"),
                fit: BoxFit.fill,
              ),
            ),child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),child: Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),),
          ),
          Container(decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
          colors: [Colors.transparent,Colors.black],),),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  child:
                      Image.asset("assets/images/Quill_Feather_Pen_Logo_F.png"),
                ),
              ),
          
          
          
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          labelText: 'Username',labelStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        controller: passwrd,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          labelText: 'Password',labelStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New User?",style: TextStyle(color: Colors.white),),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUpPg();
                            }));
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
