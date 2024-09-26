//import 'package:bev_app/screens/bev-list-screen/bev_list_screen.dart';
//import 'package:bev_app/screens/main-screen/home-screen/edit_card_sheet.dart';
import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

class BevListCard extends StatelessWidget {
  final String cardTitle;

  const BevListCard({
    super.key,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: AppColors.beerColor,
              width: 3,
            )),
        elevation: 5,
        child: GestureDetector(
          onTap: () {
            
            // Handle the card tap
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.0),
                    child: Text(
                      'Created: 11/23',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 13, // Smaller font
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.more_horiz),
                    color: const Color.fromARGB(255, 155, 155, 163),
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Text(
                  cardTitle,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 25, // Reduced font size
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '216',
                      style: TextStyle(
                        fontSize: 25,
                        //fontWeight: FontWeight.bold,
                      ), // Adjust font size
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                      color: const Color.fromARGB(255, 155, 155, 163),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
