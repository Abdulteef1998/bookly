import 'package:bookly/Features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Best Saler',
            style: Styles.textStyle20,
          )
        ],
      ),
    );
  }
}
