import 'package:bev_app/screens/main-screen/home-screen/my_lists_view.dart';
import 'package:bev_app/screens/bev-list-screen/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:bev_app/screens/main-screen/home-screen/add_item_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _lists = [];

  void addToList(String title) {
    setState(() {
      _lists.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Your Lists',
            style: TextStyle(
              fontWeight: FontWeight.bold,
        
            )
            ),
          backgroundColor: Color.fromARGB(0, 9, 39, 122),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 30,
                  onPressed: () {
                    AddItemDialog.showAddItemDialog(context, addToList);
                  }),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: MyListsView(lists: _lists),
      ),
    );
  }
}
