import 'package:flutter/material.dart';
import 'package:reco/utils/constants/sizes.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
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
        const Text('Test'),
      ],
    );
  }
}
