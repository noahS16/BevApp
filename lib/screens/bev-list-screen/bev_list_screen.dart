import 'package:bev_app/screens/bev-list-screen/add_bev_bottom_sheet.dart';
import 'package:bev_app/screens/bev-list-screen/search_bar.dart';
import 'package:bev_app/screens/bev-list-screen/sorting_options.dart';
import 'package:flutter/material.dart';

class BevListScreen extends StatefulWidget {
  final String listTitle;
  const BevListScreen({
    super.key,
    required this.listTitle,
  });

  @override
  State<BevListScreen> createState() =>
      _BevListScreenState(listTitle: listTitle);
}

class _BevListScreenState extends State<BevListScreen> {
  final String listTitle;
  bool isSearching = false;

  _BevListScreenState({required this.listTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: isSearching ? false : true,
        backgroundColor: Colors.transparent,
        title: isSearching
            ? SearchBarWidget()
            : Text(listTitle, textAlign: TextAlign.center),
        actions: [
          isSearching
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      isSearching = false;
                      //searchController.clear(); // Clear search input
                    });
                  },
                )
              : Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          isSearching = true; // Show search bar
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      onPressed: () {
                        showAddBevSheet(context);
                      },
                    ),
                  ],
                ),
        ],
      ),
      body: SortingOptionsRow(),
    );
  }
}
