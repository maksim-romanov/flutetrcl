import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:test_routing/screens/feed_screen/feed_screen.dart';
import 'package:test_routing/screens/post_screen/post_screen.dart';
import 'package:test_routing/screens/wardrobe_screen/wardrobe_screen.dart';

import './screens/initial_screens.dart';

class AppNavigation {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _sectionNavigatorKey = GlobalKey<NavigatorState>();

  static final config = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/wardrobe',
    routes: [
      // GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(
        path: '/posts/:postId',
        pageBuilder:
            (context, state) => MaterialPage(
              key: state.pageKey,
              // fullscreenDialog: true,
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
}
