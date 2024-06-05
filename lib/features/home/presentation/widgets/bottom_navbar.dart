import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key, required this.screenInfo});

  final List<Map<String, dynamic>> screenInfo;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screenInfo[_selectedIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        items: widget.screenInfo.map((screenInfo) {
          return BottomNavigationBarItem(
            icon: Icon(screenInfo['icon']),
            label: screenInfo['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
