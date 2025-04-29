import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(this.navigationShell, {super.key});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'Wardrobe'),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'Feed'),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'Profile'),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}
