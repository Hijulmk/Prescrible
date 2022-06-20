import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:prescrible/Pages/account_info.dart';
import 'package:prescrible/Pages/doc_info.dart';

final imageList = [
  "https://live.staticflickr.com/5256/5429636987_5f45004f62_b.jpg",
  "https://pbs.twimg.com/media/DsTX3RiVYAIoyGA.jpg",
  "https://mumbaimirror.indiatimes.com/img/82231966/Master.jpg"
];

class Hm extends StatefulWidget {
  const Hm({Key? key}) : super(key: key);

  @override
  State<Hm> createState() => _HmState();
}

class _HmState extends State<Hm> with SingleTickerProviderStateMixin {
  int tabIndex = 0;

  Animation<double>? _animation;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    // TODO: implement initState
    super.initState();
  }

  final List<Widget> imageSliders = imageList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imageList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "assets/images/Profile_Logo.png",
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.edit_outlined),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountDetails()));
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Email@gmail.com")
              ],
            ),
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Help'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("PRESCRIBLE")),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Doctors You Have Visited",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                    height: 120,
                    width: 120,
                    //color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    height: 120,
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                    height: 120,
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    height: 120,
                    width: 120,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Prescriptions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: 400,
            width: 340,
            // child: Image.network(imageList[0]),
            child: CarouselSlider(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 300),
                  aspectRatio: 2 / 3),
              items: imageList
                  .map((item) => Container(
                        child: Center(
                            child: Image.network(item,
                                fit: BoxFit.fill, width: 1000)),
                      ))
                  .toList(),
            ),
          )
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: FloatingActionBubble(
          items: [
            Bubble(
              title: "Add",
              iconColor: Colors.white,
              bubbleColor: Colors.blue,
              icon: Icons.add,
              titleStyle: TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => DocInformation()));
                _animationController!.reverse();
              },
            ),
            /*Bubble(
              title: "Gallery",
              iconColor: Colors.white,
              bubbleColor: Colors.blue,
              icon: Icons.photo,
              titleStyle: TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                _animationController!.reverse();
              },
            )*/
          ],
          animation: _animation!,
          onPress: () => _animationController!.isCompleted
              ? _animationController!.reverse()
              : _animationController!.forward(),
          iconColor: Colors.blue,
          iconData: Icons.add,
          backGroundColor: Colors.white,
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: tabIndex,
      //     onTap: (index) {setState(() {
      //       tabIndex = index;

      //     });
      //     },
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label:"cam"),
      //       BottomNavigationBarItem(icon: Icon(Icons.search),label:"srch"),
      //       BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: "c")
      //     ]),
    );
  }
}
