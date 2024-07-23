import 'package:flutter/material.dart';

class SwitchTabBar extends StatelessWidget {
  const SwitchTabBar({required this.tabs, required this.tabController, super.key});

  final List<Tab> tabs;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.all(2),
      dividerHeight: 0,
      indicatorWeight: 0,
      controller: tabController,
      labelStyle: const TextStyle(fontWeight: FontWeight.w700),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6,
        ),
        color: Colors.green,
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.deepPurple,
          ],
        ),
      ),
      labelColor: Colors.white,
      tabs: tabs,
    );
  }
}
