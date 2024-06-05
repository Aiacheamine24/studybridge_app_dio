import 'package:flutter/material.dart';

class SideNavbar extends StatefulWidget {
  const SideNavbar({super.key, required this.screenInfo});
  final List<Map<String, dynamic>> screenInfo;

  @override
  State<SideNavbar> createState() => _SideNavbarState();
}

class _SideNavbarState extends State<SideNavbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            labelType: NavigationRailLabelType.all,
            destinations: widget.screenInfo.map((screenInfo) {
              return NavigationRailDestination(
                icon: Icon(screenInfo['icon']),
                label: Text(screenInfo['label']),
              );
            }).toList(),
            selectedIconTheme: IconThemeData(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: widget.screenInfo[_selectedIndex]['screen'] as Widget,
          ),
        ],
      ),
    );
  }
}
