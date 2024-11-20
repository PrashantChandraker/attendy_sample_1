import 'dart:developer';
import 'package:attendy_sample_1/Screens/Second_Screen.dart';
import 'package:attendy_sample_1/Screens/Third_Screen.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/First_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CircleNavBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0; // Track the current tab index
  late PageController _pageController; // Page controller for PageView

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _tabIndex); // Initialize the PageController
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // Method to update the tab index and synchronize with PageView
  void _onBottomNavTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
    _pageController
        .jumpToPage(_tabIndex); // Synchronize PageView with tab change
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const Page1(),
      const Page2(),
      const CustomCard(),
    ];

    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _tabIndex = index; // Update the selected tab when the page changes
          });
        },
        children: bottomBarPages, // The pages to display in the PageView
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.fire_truck,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
        ],
        inactiveIcons: const [
          Text(
            "Home",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Truck",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Profile",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
        color: Colors.black,
        height: 80,
        circleWidth: 70,
        activeIndex: _tabIndex, // Bind the active tab index
        onTap: _onBottomNavTapped, // Sync tap event with the page controller
        padding: const EdgeInsets.only(bottom: 2, left: 2, right: 2),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        // shadowColor: Colors.black,
        // elevation: 10,
      ),
    );
  }
}
