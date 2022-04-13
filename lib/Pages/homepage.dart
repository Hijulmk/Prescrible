import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Hm extends StatefulWidget {
  const Hm({Key? key}) : super(key: key);

  @override
  State<Hm> createState() => _HmState();
}

class _HmState extends State<Hm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("PRESCRIBLE"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
              )
            ],
          )
        ,PersistentBottomNavBar(navBarStyle: NavBarStyle.style16,)]),
      ),
    );
  }
}
