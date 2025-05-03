import 'package:flutter/material.dart';
import 'package:yumquick_app/pages/contact_page.dart';
import 'package:yumquick_app/pages/favorite_page.dart';
import 'package:yumquick_app/pages/history_page.dart';
import 'package:yumquick_app/pages/food_page.dart';
import 'home_page.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    FoodPage(),
    FavoritePage(),
    HistoryPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orangeAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/order.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/fav.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/time.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/contact.png', height: 24),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
