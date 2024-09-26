import 'package:bev_app/themes/my_colors.dart';
import 'package:bev_app/widgets/login_buttons.dart';
import 'package:flutter/material.dart';

class AddItemDialog {
  static void showAddItemDialog(
      BuildContext context, Function(String) addToList) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newListItem = '';
        return AlertDialog(
          //surfaceTintColor: Colors.transparent ,
          //contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          //alignment: Alignment.centerLeft,
          //backgroundColor: AppColors.backgroundShade,
        
          title: const Text(
            'New List',
            textAlign: TextAlign.center,),
          content: TextField(
            autofocus: true,
            onChanged: (value) {
              newListItem = value;
            },
            decoration: InputDecoration(
              hintText: 'New list name',
              hintStyle: TextStyle(color: Colors.grey), // Style for hint text
          
              filled: true, // Makes the background color fill the TextField
              fillColor:const Color.fromARGB(0, 219, 21, 21), // Background color of the TextField
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.transparent, // Border color when enabled
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: AppColors.backgroundShade, // Border color when focused
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 8,
                  child: PlainButton(
                    text: 'Cancel',
                    buttonColor: AppColors.whiteColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 10,
                  child: PlainButton(
                    text: 'Save',
                    onPressed: () {
                      if (newListItem.isNotEmpty) {
                        addToList(newListItem); // Add the new item
                        Navigator.of(context).pop(); // Close the dialog
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
