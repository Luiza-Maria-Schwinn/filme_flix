import 'package:flutter/material.dart';
import 'package:filme_flix/screens/home_screen.dart';
import 'package:filme_flix/screens/search_screen.dart';
import 'package:filme_flix/screens/favorites_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int selectedIndex = 3;

  final List<Map<String, dynamic>> settingsOptions = [
    {'icon': Icons.person, 'label': 'Account'},
    {'icon': Icons.lock, 'label': 'Privacy'},
    {'icon': Icons.palette, 'label': 'Appearance'},
    {'icon': Icons.notifications, 'label': 'Notifications'},
    {'icon': Icons.storage, 'label': 'Storage'},
    {'icon': Icons.accessibility, 'label': 'Accessibility'},
    {'icon': Icons.help, 'label': 'Help'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  color: Color(0xFFF3F3F3),
                ),
              ),
            ),
            const SizedBox(height: 32),

            Row(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage('assets/images/stelle.jpg'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Zeta',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        color: Color(0xFFF3F3F3),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'example@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(0xFFF3F3F3),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),

            ...settingsOptions.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Icon(item['icon'], color: Colors.white),
                  const SizedBox(width: 16),
                  Text(
                    item['label'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Color(0xFFF3F3F3),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF121212),
        selectedItemColor: const Color(0xFF32A873),
        unselectedItemColor: const Color(0xFFBBBBBB),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);
          if (index == 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
          } else if (index == 2) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FavoritesScreen()));
          } else if (index == 3) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
