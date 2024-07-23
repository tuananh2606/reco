import 'package:flutter/material.dart';

class LChip extends StatelessWidget {
  const LChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
        ),
        child: Text(
          'ENG',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
