import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_routing/screens/feed_screen/feed_screen.dart';
import 'package:test_routing/screens/post_screen/post_screen.dart';
import 'package:test_routing/screens/profile_screen.dart';
import 'package:test_routing/screens/wardrobe_screen/wardrobe_screen.dart';

import './widgets/scaffold_bottom_tabs.dart';

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
        builder: (context, state, navigationShell) => ScaffoldBottomTabs(navigationShell),
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
          StatefulShellBranch(routes: [GoRoute(path: '/profile', builder: (ctx, state) => ProfileScreen())]),
        ],
      ),
    ],
  );
}
