import 'package:flutter/material.dart';
import '/screens/dashboard.dart';
import '/screens/patients.dart';
import '/screens/profile.dart';
import '/screens/schedule.dart';
import '/screens/settings.dart';
// import '/widgets/bottom_nav.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

    final List<Widget> screens = [
    // Add your screen widgets here
    DashboardScreen(),
    ScheduleScreen(),
    PatientScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: screens[_currentIndex], // Body displays the current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Patients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {          
          // Handle item tap
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}