import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobilerush/pages/project.dart';

class hoomepage extends StatefulWidget {
  const hoomepage({Key? key}) : super(key: key);

  @override
  State<hoomepage> createState() => _hoomepageState();
}

class _hoomepageState extends State<hoomepage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    // setState(() {
    //   _selectedIndex = index;
    //   if (_selectedIndex != 1) {
    //     Navigator.pushNamed(context, 'project');
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screenpage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.blueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/ic_home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/ic_projects.png"),
            ),
            label: 'Project',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/ic_about_us.png"),
            ),
            label: 'About us',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/ic_team.png"),
            ),
            label: 'Our team',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/ic_contacts.png"),
            ),
            label: 'Contact',
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // iconSize: 40,
        // //onTap: _onItemTapped,
        // elevation: 5
      ),
    );
  }
}

class screenpage extends StatelessWidget {
  const screenpage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HOME',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Image.asset(
        'images/logo_ebpearls.png',
        height: 90,
      ),
      Text(
        "Award-wining \n digital agency",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/ic_projects.png"),
                          Text(
                            "3400+ ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Projects\n" + " delivered")
                        ]),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/ic_developers.png"),
                          Text(
                            "180+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("developer")
                        ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/ic_years_tick.png"),
                          Text(
                            "3400+ ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Projects\n" + " delivered")
                        ]),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/ic_happy.png"),
                          Text(
                            "180+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("developer")
                        ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      )
    ]);
  }
}
