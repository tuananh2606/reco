import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/utils/constants/sizes.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final List<GButton> body = [
    const GButton(
      icon: Icons.today,
      text: 'Updates',
    ),
    const GButton(
      icon: LineIcons.fire,
      text: 'Hot',
    ),
    const GButton(
      icon: LineIcons.search,
      text: 'Search',
    ),
    const GButton(
      icon: LineIcons.user,
      text: 'Profile',
    ),
  ];

  // List<Widget> screen = const [
  //   Homepage(),
  //   HotScreen(),
  //   SearchScreen(),
  //   ProfileScreen(),
  // ];

  void _onItemTapped(int index, BuildContext context) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black12,
        color: Colors.white,
        activeColor: Colors.yellow,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 8,
        iconSize: 28,
        tabMargin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: Sizes.md, vertical: Sizes.sm),
        tabs: body,
        selectedIndex: navigationShell.currentIndex,
        onTabChange: (index) => _onItemTapped(index, context),
      ),
      body: navigationShell,
    );
  }
}
