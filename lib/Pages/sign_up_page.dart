import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prescrible/Pages/login_page.dart';

class SignUpPg extends StatefulWidget {
  const SignUpPg({Key? key}) : super(key: key);

  @override
  State<SignUpPg> createState() => _SignUpPgState();
}

final username = TextEditingController();
final passwrd = TextEditingController();

class _SignUpPgState extends State<SignUpPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      body: Stack(
        alignment: Alignment.center,
        children:[
          Container(height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/images/BgImg1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: BackdropFilter(
          filter:  ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),child: Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),)),

           Container(decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
          colors: [Colors.transparent,Colors.black],),),
          child: Column(
            
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/Quill_Feather_Pen_Logo_F.png"),
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                 
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                child: TextField(
                  controller: passwrd,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                child: TextField(
                  controller: passwrd,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: passwrd,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Gender',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.white),),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPg();
                      }));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Sign Up'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginPg();
                  }));
                },
              ),
            ],
          ),
        ),
      ],),
    ) ],
                ),
              );
  }
}
