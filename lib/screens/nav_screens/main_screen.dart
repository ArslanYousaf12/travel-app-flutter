import 'package:flutter/material.dart';
import 'package:travel_app/screens/nav_screens/bar_item_screen.dart';
import 'package:travel_app/screens/nav_screens/home_screen.dart';
import 'package:travel_app/screens/nav_screens/my_screen.dart';
import 'package:travel_app/screens/nav_screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List botton_nav_screens = [
    HomeScreen(),
    BarItemScreen(),
    SearchScreen(),
    MyScreen(),
  ];
  int selectedIndex = 0;
  void onTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: botton_nav_screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: onTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: "Bar",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
        ],
      ),
    );
  }
}
