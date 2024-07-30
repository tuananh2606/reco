import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:reco/bottom_navbar.dart';
import 'package:reco/features/detail/view/detail_screen.dart';
import 'package:reco/features/homepage/view/home_page.dart';
import 'package:reco/features/hotpage/view/hot_screen.dart';
import 'package:reco/features/profile/view/profile_screen.dart';
import 'package:reco/features/search/view/search_screen.dart';
import 'package:reco/features/settings/view/settings_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class LRouter {
  LRouter._();
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return BottomNavbar(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          // The route branch for the first tab of the bottom navigation bar.
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/',
                builder: (BuildContext context, GoRouterState state) => const Homepage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/hot',
                builder: (BuildContext context, GoRouterState state) => const HotScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/search',
                builder: (BuildContext context, GoRouterState state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/profile',
                builder: (BuildContext context, GoRouterState state) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    path: 'settings',
                    builder: (BuildContext context, GoRouterState state) {
                      return const SettingsScreen();
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/details/:id',
        builder: (BuildContext context, GoRouterState state) => DetailScreen(
          id: state.pathParameters['id']!,
        ),
      ),
    ],
  );
}
