import 'package:flutter/material.dart';

class SortingOptionsRow extends StatelessWidget {
  final List<String> sortingOptions = [
    'Date',
    'Name',
    'ABV',
    'Rating',
    'Brewery',
    'Category'
  ];

  SortingOptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sortingOptions.map((option) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle sorting logic here for each option
                  print('Sorting by $option');
                },
                child: Text(option),
              ),
            );
          }).toList(),
        ),
      ),
    );

  }
}