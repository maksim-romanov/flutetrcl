import 'package:flutter/material.dart';

class CardPlaceholderWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const CardPlaceholderWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          // splashColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
