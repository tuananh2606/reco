import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/features/homepage/view/home_page.dart';
import 'package:reco/features/hotpage/view/hot_screen.dart';
import 'package:reco/features/profile/view/profile_screen.dart';
import 'package:reco/features/search/view/search_screen.dart';
import 'package:reco/utils/constants/sizes.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

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

  List<Widget> screen = [
    const Homepage(),
    const HotScreen(),
    const SearchScreen(),
    ProfileScreen(key: Key('PageC${DateTime.now().millisecondsSinceEpoch}')),
  ];

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _currentIndex = index;
    });
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
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
        selectedIndex: widget.navigationShell.currentIndex,
        onTabChange: (index) => _onItemTapped(index, context),
      ),
      body: bodyBuild(_currentIndex),
    );
  }

  Widget bodyBuild(int selectedIndex) {
    if (selectedIndex == 3) {
      screen
        ..removeAt(3)
        ..insert(3, ProfileScreen(key: UniqueKey()));
    }

    return IndexedStack(
      index: _currentIndex,
      children: screen,
    );
  }
}
