import 'package:flutter/material.dart';
import 'package:reminder_app/horizontal_card.dart';

class MySidebar extends StatefulWidget {
  const MySidebar({super.key});

  @override
  _MySidebarState createState() => _MySidebarState();
}

class _MySidebarState extends State<MySidebar> {
  int _selectedIndex = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: _isExpanded,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIconTheme: const IconThemeData(color: Colors.indigo),
            leading: IconButton(
              icon: Icon(_isExpanded ? Icons.arrow_back : Icons.menu),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home_rounded),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.add_box_outlined),
                label: Text('Add List'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list_outlined),
                label: Text('New List'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.calendar_month_outlined),
                label: Text('Schedule'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(child: HomeScreen()),
          ),
        ],
      ),
    );
  }
}
