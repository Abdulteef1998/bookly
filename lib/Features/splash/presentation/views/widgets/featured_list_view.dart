import 'package:bookly/Features/splash/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 8), // make space between items
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
