import 'package:flutter/material.dart';
import 'package:reco/utils/constants/sizes.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.img,
    required this.title,
    required this.id,
  });

  final String id;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          img,
          fit: BoxFit.cover,
          height: 140,
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
        Text(title),
      ],
    );
  }
}
