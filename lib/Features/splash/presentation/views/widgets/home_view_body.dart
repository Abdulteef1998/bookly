import 'package:bookly/Features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 20,
          ),
          BestSalerListViewItem(),
        ],
      ),
    );
  }
}

class BestSalerListViewItem extends StatelessWidget {
  const BestSalerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Hary potter and the Gobblet of Fire ',
                  style: Styles.textStyle20,
                  maxLines: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
