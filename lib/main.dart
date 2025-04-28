import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/posts/:postId',
      // builder: (context, state) => PostScreen(postId: state.pathParameters['postId']!),
      pageBuilder:
          (context, state) => MaterialPage(
            key: state.pageKey,
            fullscreenDialog: true,
            child: PostScreen(postId: state.pathParameters['postId']!),
          ),
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ScaffoldWithNavbar(navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: [
            GoRoute(
              path: '/wardrobe',
              builder: (ctx, state) => WardrobeScreen(),
              routes: <RouteBase>[
                GoRoute(path: '/info', builder: (context, state) => const PostScreen(postId: 'info')),
              ],
            ),
          ],
        ),

        StatefulShellBranch(routes: [GoRoute(path: '/feed', builder: (ctx, state) => FeedScreen())]),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      routerConfig: _router,
    );
  }
}

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
