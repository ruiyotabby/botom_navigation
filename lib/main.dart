import 'package:botom_navigation/defaults/defaults.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var indexClicked = 0;

  final pages = [
    Center(
      child: Text('Inbox'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Drafts'),
    ),
    Center(
      child: Text('Trash'),
    ),
    Center(
      child: Text('Spam'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[1],
            ),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[2],
            ),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[3],
            ),
            label: Defaults.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[4],
            ),
            label: Defaults.bottomNavItemText[4],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomNavItemIcon[5],
            ),
            label: Defaults.bottomNavItemText[5],
          ),
        ],
      ),
    );
  }
}
