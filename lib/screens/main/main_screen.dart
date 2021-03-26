import 'package:carplan/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        /**
            IndexedStack 화면을 쌓아놓은다.
            List<Widget> 기존 인덱스 Widget을 지우고 새로 할당.
         */
        index: _selectedIndex,
        children: [
          Text("123"),
          Text("456"),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemPapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "자동차"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "기록"),
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
