import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reco/data/database/reco_database.dart';
import 'package:reco/data/models/history/history_model.dart';
import 'package:reco/utils/constants/sizes.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.img = '',
    this.title = '',
    this.id = '',
  });

  final String id;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    final db = RecoDatabase.instance;
    return GestureDetector(
      onTap: () {
        db.insertHistoryItem(HistoryModel(objectId: id, title: title, image: img));
        context.push('/details/$id');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: img,
            placeholder: (context, url) => Container(
              color: Colors.black,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            height: 160,
            width: double.infinity,
          ),
          const Row(
            children: [
              Icon(
                Icons.visibility,
                size: Sizes.iconSm,
              ),
              SizedBox(
                width: 4,
              ),
              Text('10000'),
            ],
          ),
          Text(
            title,
            maxLines: 2,
            style: Theme.of(context).textTheme.labelLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
