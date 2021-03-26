import 'package:carplan/screens/car/car_screen.dart';
import 'package:carplan/screens/management/management_screen.dart';
import 'package:carplan/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        /**
            IndexedStack 화면을 쌓아놓은다.
            List<Widget> 기존 인덱스 Widget을 지우고 새로 할당.
         */
        index: _selectedIndex,
        children: [
          ManagementScreen(),
          CarScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemPapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "관리"),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: "자동차"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
        ],
      ),
    );
  }

  void _onItemPapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
