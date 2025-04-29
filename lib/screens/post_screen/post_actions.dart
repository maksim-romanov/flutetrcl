import 'package:flutter/material.dart';

class PostActionsWidget extends StatelessWidget {
  final Widget child;

  const PostActionsWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Positioned(
          right: 8,
          bottom: 32,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite_border, color: Theme.of(context).colorScheme.outline, size: 21),
              Text('1'),
              SizedBox(height: 16),
              Icon(Icons.chat_bubble_outline, color: Theme.of(context).colorScheme.outline, size: 21),
              Text('0'),
              SizedBox(height: 16),
              Icon(
                Icons.all_inclusive,
                color: Theme.of(context).colorScheme.outline,
                size: 21,
              ), // замените на нужную иконку
              Text('0'),
              SizedBox(height: 16),
              Icon(Icons.send, color: Theme.of(context).colorScheme.outline, size: 21),
              Text('0'),
            ],
          ),
        ),
      ],
    );
  }
}
