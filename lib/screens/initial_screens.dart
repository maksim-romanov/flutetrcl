// DELETE THIS FILE
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.go('/wardrobe');
          },
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class PostScreen extends StatelessWidget {
  const PostScreen({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Settings page')), body: Center(child: Text('settings $postId')));
  }
}

class WardrobeScreen extends StatelessWidget {
  const WardrobeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wardrobe page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.push('/wardrobe/info');
          },
          child: Text('wardrobe'),
        ),
      ),
    );
  }
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.push('/posts/1000');
          },
          child: Text('feed'),
        ),
      ),
    );
  }
}

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
          BottomNavigationBarItem(icon: Icon(Icons.checkroom), label: 'Wardrobe'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}
