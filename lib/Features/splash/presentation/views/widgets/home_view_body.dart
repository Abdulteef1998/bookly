import 'package:bookly/Features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(), CustomListViewItem()],
    );
  }
}
