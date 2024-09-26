import 'package:bev_app/screens/bev-list-screen/bev_list_view_card.dart';
import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

// Grid View For My Lists Screen
class BevListView extends StatelessWidget {
  final List<String> bevs;
  const BevListView({
    super.key,
    required this.bevs,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1, // To make the cards square
      ),
      itemCount: bevs.length, // Number of cards
      itemBuilder: (context, index) {
        return BevListCard(cardTitle: bevs[index]);
      },
    );
  }
}
