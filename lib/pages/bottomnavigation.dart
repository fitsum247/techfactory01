import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SettingsPage.dart';
import 'WashesPage.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigation(

      ),

    );
  }
  Widget buildPages() {
    switch (index) {
      case 1:
        return  WashesPage();
      case 2:
        return  SettingsPage();
      case 0:
      default:  return LoginPage();

    }
  }

  Widget buildBottomNavigation() {
    final inactivColor = Colors.grey;
    return BottomNavyBar(
        backgroundColor: Colors.white,
        itemCornerRadius: 16,
        selectedIndex: index,
        onItemSelected: (index) => setState(() => this.index = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home,
                color: Colors.blue),
            title: Text('Home', maxLines: 1,
              style: TextStyle(
                  color: Colors.indigoAccent
              ),),
            textAlign: TextAlign.center,
            activeColor: Colors.blue,
            inactiveColor: inactivColor,

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bubble_chart_rounded,
                color: Colors.blue),
            title: Text('Washes', maxLines: 1,
              style: TextStyle(
                  color: Colors.indigoAccent
              ),),
            textAlign: TextAlign.center,
            activeColor: Colors.blue,
            inactiveColor: inactivColor,

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings,
                color: Colors.blue),
            title: Text('Settings', maxLines: 1,
              style: TextStyle(
                  color: Colors.indigoAccent
              ),),
            textAlign: TextAlign.center,
            activeColor: Colors.blue,
            inactiveColor: inactivColor,

          ),
        ]);
  }

}

