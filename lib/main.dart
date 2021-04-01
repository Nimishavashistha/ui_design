import 'package:flutter/material.dart';
import 'package:urban_ui/widgets/profile_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationUi(),
    );
  }
}

class BottomNavigationUi extends StatefulWidget {
  @override
  _BottomNavigationUiState createState() => _BottomNavigationUiState();
}

class _BottomNavigationUiState extends State<BottomNavigationUi> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Bookings"),
    ),
    Center(
      child: Text("Uc Safe"),
    ),
    Center(
      child: Text("Rewards"),
    ),
    ProfileUi()
  ];

  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 7,
        currentIndex: _currentIndex,
        onTap: onTapped,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Bookings", icon: Icon(Icons.book_online)),
          BottomNavigationBarItem(
              label: "UC Safe",
              icon: Icon(
                Icons.shield,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              label: "Rewards", icon: Icon(Icons.account_balance_wallet)),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
