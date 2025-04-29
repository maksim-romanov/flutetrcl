import 'package:flutter/material.dart';
import 'dart:ui';

class BluredAppBarWidget extends StatelessWidget {
  const BluredAppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 150,
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: FlexibleSpaceBar(
            title: Text(title),
            centerTitle: true,
            background: Container(color: Theme.of(context).colorScheme.surface.withValues(alpha: 1)),
          ),
        ),
      ),
    );
  }
}
