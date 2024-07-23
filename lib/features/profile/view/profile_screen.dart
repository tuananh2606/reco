import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/common/widgets/card/card_item.dart';
import 'package:reco/common/widgets/layout/grid_layout.dart';
import 'package:reco/common/widgets/tabbar/tabbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const tabs = <Tab>[
      Tab(text: 'Favourite'),
      Tab(text: 'History'),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(icon: const Icon(LineIcons.cog), onPressed: () => context.push('/profile/settings')),
          ),
        ],
        title: const Text('MY SHELF'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              toolbarHeight: 48,
              pinned: true,
              backgroundColor: Colors.grey.shade900,
              flexibleSpace: RTabBar(
                tabs: tabs,
                tabController: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            GridLayout(itemCount: 21, mainAxisExtent: 190, itemBuilder: (_, index) => const CardItem()),
            GridLayout(itemCount: 21, mainAxisExtent: 190, itemBuilder: (_, index) => const CardItem()),
          ],
        ),
      ),
    );
  }
}
