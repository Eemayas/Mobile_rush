import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class project extends StatefulWidget {
  const project({Key? key}) : super(key: key);

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if(_selectedIndex==)
      // {
      //   navigato
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "project",
                style: TextStyle(fontSize: 30),
              )
            ],
          )
        ]),
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
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
