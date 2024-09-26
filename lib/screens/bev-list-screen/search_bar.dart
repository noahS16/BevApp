import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: TextField(
        
        controller: _searchController,
        autofocus: true,
        style: TextStyle(color: Colors.black), // Set text color
        decoration: InputDecoration(
          
          hintText: 'Search for a bev...',
          hintStyle: TextStyle(color: Colors.grey), // Style for hint text
          prefixIcon: const Icon(Icons.search, color: Colors.grey), // Search icon
          filled: true, // Makes the background color fill the TextField
          fillColor: Colors.transparent, // Background color of the TextField
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
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
        ),
        onChanged: (value) {
          // Logic to filter/search for beers
          print(value);
        },
      ),
    );
  }
}