import 'package:bev_app/themes/my_colors.dart';
import 'package:bev_app/screens/main-screen/home-screen/my_lists_card.dart';
import 'package:flutter/material.dart';

// Grid View For My Lists Screen
class MyListsView extends StatelessWidget {
  final List<String> lists;
  const MyListsView({
    super.key,
    required this.lists,
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
      itemCount: lists.length, // Number of cards
      itemBuilder: (context, index) {
        return MyListsCard(cardTitle: lists[index]);
      },
    );
  }
}
