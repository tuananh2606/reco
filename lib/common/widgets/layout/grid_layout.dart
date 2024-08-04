import 'package:flutter/material.dart';
import 'package:reco/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
    this.mainAxisExtent,
    this.controller,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.2;
    final double itemWidth = size.width / 2;
    return GridView.builder(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: itemWidth / itemHeight,
        crossAxisCount: 3,
        mainAxisSpacing: Sizes.gridViewSpacing / 4,
        crossAxisSpacing: Sizes.gridViewSpacing / 2,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
