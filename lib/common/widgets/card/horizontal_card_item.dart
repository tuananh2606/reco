import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reco/data/models/manga/manga_model.dart';
import 'package:reco/common/widgets/chip/chip.dart';
import 'package:reco/utils/constants/sizes.dart';

class HorizontalCardItem extends StatelessWidget {
  const HorizontalCardItem({
    required this.index,
    required this.manga,
    super.key,
  });

  final int index;
  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/details/${manga.id}'),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 90,
              width: 60,
              child: CachedNetworkImage(
                imageUrl: manga.img!,
                placeholder: (context, url) => Container(
                  color: Colors.black,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              width: Sizes.spaceBtwItems,
            ),
            Text(
              '$index',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  manga.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      manga.description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
      ),
    );
  }
}
