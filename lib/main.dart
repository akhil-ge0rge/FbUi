import 'package:fbui/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _botIndex = 0;

  List<Widget> pages = <Widget>[
    HomeScreen(),
    Text("Videos"),
    Text("Profile"),
    Text("Groups"),
    Text("Notification"),
    Text("Menu")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          actions: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: pages[_botIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _botIndex,
            onTap: (value) {
              _botIndex = value;
              setState(() {});
            },
            selectedIconTheme: IconThemeData(color: Colors.blue),
            unselectedIconTheme: IconThemeData(color: Colors.grey[300]),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.tv), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.groups), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.density_medium), label: ''),
            ]),
      ),
    );
  }
}
