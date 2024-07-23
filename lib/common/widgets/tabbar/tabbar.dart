import 'package:flutter/material.dart';
import 'package:reco/utils/device/device_utility.dart';

class RTabBar extends StatelessWidget implements PreferredSizeWidget {
  const RTabBar({required this.tabs, super.key, this.backgroundColor = Colors.black, this.tabController});

  final List<Widget> tabs;
  final Color backgroundColor;
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: TabBar(
        controller: tabController,
        labelColor: Colors.white,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        overlayColor: WidgetStateColor.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.red,
        dividerHeight: 0,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
