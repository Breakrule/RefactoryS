import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List pages = [
    const Center(child: Text("1")),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
    const Center(child: Text("4")),
    const Center(child: Text("5")),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.amberAccent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          currentIndex: _selectedIndex,
          onTap: onTapNav,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.rocket),
              label: "Lobby",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: "Task",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Trophy",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: "About",
            ),
          ]),
    );
  }
}
