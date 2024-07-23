import 'package:flutter/material.dart';
import 'package:reco/common/widgets/chip/chip.dart';
import 'package:reco/utils/constants/sizes.dart';

class HorizontalCardItem extends StatelessWidget {
  const HorizontalCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 80,
            width: 50,
            child: Image.network(
              'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: Sizes.spaceBtwItems,
          ),
          Text(
            '1',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Expanded(
            child: ListTile(
              title: Text(
                'Test',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'aaaaaaaaaaaaaa',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      LChip(),
                      LChip(),
                      LChip(),
                      LChip(),
                      LChip(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.visibility,
                      size: Sizes.iconXs,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '413k',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
