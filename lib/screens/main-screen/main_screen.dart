import 'package:bev_app/screens/main-screen/dashboard_screen.dart';
import 'package:bev_app/screens/main-screen/home-screen/home_screen.dart';
import 'package:bev_app/screens/main-screen/profile_screen.dart';
import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List of screens for the navigation bar
  final List<Widget> _pages = [
    HomeScreen(),   // This is stateful

    DashboardScreen(),
    
    ProfileScreen(), // This can be stateless
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Switches between screens based on selected index
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.beerColor,
        currentIndex: _selectedIndex, // Tracks the current tab
        onTap: _onItemTapped, // Handles tab switching
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}