import 'package:flutter/material.dart';
class SignUpPg extends StatefulWidget {
  const SignUpPg({ Key? key }) : super(key: key);

  @override
  State<SignUpPg> createState() => _SignUpPgState();
}


final username = TextEditingController();
final passwrd = TextEditingController();


class _SignUpPgState extends State<SignUpPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("PRESCRIBLE"),
        ),
        body:SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(height: 150,width: 150,child: Image.asset("assets/images/Logo.png"),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwrd,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwrd,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            Row(
              children: [Title(color: Colors.green, child: Text("Already have an account?")),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SignUpPg();
                      }));
                    },
                    child: Text("Sign In",style: TextStyle(color: Colors.blue),),),
              ],
            ),
                
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {},
            ),
          ],
              ),
        ),);
  }
}