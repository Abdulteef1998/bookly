import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: Row(children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              // Navigate to the search view
              context.go(AppRoute
                  .kSearchView); // Use context.go() instead of GoRoute.of(context).push()
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
              color: Colors.white,
            ),
          )
        ]));
  }
}
