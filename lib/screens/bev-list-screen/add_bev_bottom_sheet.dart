import 'package:bev_app/screens/bev-list-screen/add_photo_widget.dart';
import 'package:bev_app/screens/bev-list-screen/search_bar.dart';
import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

void showAddBevSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled:
        true, // Allows controlling the height of the bottom sheet
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (BuildContext context) {
      return FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.85, // Adjust to 0.75 for 75% or 0.8 for 80% of the screen height
        child: Column(
          
          children: [
            Container( // drag indicator
              width: 40,
              height: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[400], 
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SearchBarWidget(),
            AddPhotoWidget(),
          ],
        ),
      );
    },
  );
}
