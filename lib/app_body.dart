import 'package:flutter/material.dart';

class Appbody extends StatefulWidget {
  const Appbody({super.key});

  @override
  State<Appbody> createState() => _AppbodyState();
}

class _AppbodyState extends State<Appbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: Colors.amber,
            ),
          ],
        ),
    );
  }
}