import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/providers/my_posts_notifier.dart';
import 'package:test_routing/screens/wardrobe_screen/widgets/my_posts.dart';
import 'package:test_routing/screens/wardrobe_screen/widgets/recently_added_posts.dart';
import 'package:test_routing/widgets/blured_app_bar.dart';

class WardrobeScreen extends ConsumerWidget {
  const WardrobeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myPostsAsync = ref.watch(myPostsNotifierProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          BluredAppBarWidget(title: 'Wardrobe'),

          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 32.0)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '#', style: Theme.of(context).textTheme.titleSmall),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'All',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    TextSpan(text: ' / 1 / 9d', style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 6.0)),

          myPostsAsync.when(
            loading: () => MyPostsWidget(posts: [], isLoading: true),
            error: (error, stackTrace) => SliverToBoxAdapter(child: Center(child: Text(error.toString()))),
            data: (data) => MyPostsWidget(posts: data.take(4).toList(), isLoading: false),
          ),

          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 32.0)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '#', style: Theme.of(context).textTheme.titleSmall),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'Recently Added',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    TextSpan(text: ' / ${100}', style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            ),
          ),

          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 6.0)),

          myPostsAsync.when(
            loading: () => SliverToBoxAdapter(child: Container()),
            error: (error, stackTrace) => SliverToBoxAdapter(child: Center(child: Text(error.toString()))),
            data: (data) => RecentlyAddedPostsWidget(posts: data),
          ),
        ],
      ),
    );
  }
}
