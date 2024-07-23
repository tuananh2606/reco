import 'package:flutter/material.dart';
import 'package:reco/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({required this.itemCount, required this.itemBuilder, super.key, this.mainAxisExtent});
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: Sizes.gridViewSpacing / 4,
          crossAxisSpacing: Sizes.gridViewSpacing / 4,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder,);
  }
}
