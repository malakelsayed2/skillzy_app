import 'package:flutter/material.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/features/home/views/courses_screen.dart';
import 'package:skillzy_app/features/home/views/home_screen.dart';
import 'package:skillzy_app/features/home/views/profile_screen.dart';
import 'package:skillzy_app/features/home/views/requests_screen.dart';
import 'package:skillzy_app/features/home/views/schedule_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    CoursesScreen(),
    ScheduleScreen(),
    RequestsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        height: 115,
        padding: EdgeInsets.only(top: 10),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),

          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(height: 2),
            unselectedLabelStyle: TextStyle(height: 0),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(ColorManager.mainColorGreen),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/homeIcon.png',
                  color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                ),
                label: _selectedIndex == 0 ? 'Home' : '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/CoursesIcon.png',
                  color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                ),
                label: _selectedIndex == 1 ? 'Courses' : '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/scheduleIcon.png',
                  color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                ),
                label: _selectedIndex == 2 ? 'Schedule' : '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/requestsIcon.png',
                  color: _selectedIndex == 3 ? Colors.white : Colors.grey,
                ),
                label: _selectedIndex == 3 ? 'Requests' : '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/person.png',
                  color: _selectedIndex == 4 ? Colors.white : Colors.grey,
                ),
                label: _selectedIndex == 4 ? 'Profile' : '',
              ),
            ],
            selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
