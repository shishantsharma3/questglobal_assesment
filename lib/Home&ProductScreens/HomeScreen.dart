import 'package:flutter/material.dart';
import 'CategoriesScreen.dart';
import 'HomeFragmentScreen.dart';
import 'UserProfile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController mobileController = TextEditingController();
  int _selectedIndex = 0;

  final widgetOptions = [
    const HomeFragmentScreen(),
    const CategoriesScreen(),
    const UserProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    //TODO :- Add Loader View
    // Widget loadingIndicator =
    //     _isLoading ? buildLoaderView(context) : new Container();
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF00008B),
        elevation: 0,
        currentIndex: _selectedIndex, //New
        onTap: onItemTapped,
        selectedFontSize: 13,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white38,
        ),
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Product Categories',
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
