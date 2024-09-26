import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

void showOptionsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: AppColors.backgroundColor,
        ),
        padding: const EdgeInsets.all(5.0),
        height: 160, // Increased height to accommodate the drag indicator
        child: Column(
          children: [
            // Drag down indicator
            Container(
              width: 40,
              height: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[400], // Customize the color of the drag handle
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // Rest of the content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('Rename'),
                    onTap: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text('Delete'),
                    onTap: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}