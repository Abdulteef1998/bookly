import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Hary potter and the Gobblet of Fire ',
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text('J.K.Rowling', style: Styles.textStyle14),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text('19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
