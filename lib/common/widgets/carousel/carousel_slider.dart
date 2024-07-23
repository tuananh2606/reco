import 'package:flutter/material.dart';

class RCarouselSlider extends StatelessWidget {
  const RCarouselSlider({
    required this.items, super.key,
    this.title = '',
    this.buttonTitle = 'See more',
    this.showSeeMoreButton = true,
    this.onPressed,
  });

  final List<String> items;
  final String title;
  final String buttonTitle;
  final bool showSeeMoreButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (showSeeMoreButton)
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == items.length - 1 ? 0 : 8),
                  child: SizedBox(
                    width: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          items[index],
                          fit: BoxFit.cover,
                          width: 90,
                          height: 130,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Centuria Centuria Centuria',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14, height: 1.2),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
