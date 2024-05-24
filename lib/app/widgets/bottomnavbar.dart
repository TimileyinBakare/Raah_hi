import 'package:flutter/material.dart';
import 'package:raah_hi/app/config/constants/color.dart';
import 'package:raah_hi/app/modules/chats/view/chat.dart';
import 'package:raah_hi/app/modules/contributions/view/contributions.dart';
import 'package:raah_hi/app/modules/profile/view/profile.dart';

class CustomBottomNavigation extends StatefulWidget {
  static const routeName = "bottomNav";
  const CustomBottomNavigation({super.key});

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const Contributions(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color(AppColor.primaryColor),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.travel_explore), label: "Contributions"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
