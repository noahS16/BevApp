import 'package:bev_app/screens/create-profile/create_profile_screen.dart';
import 'package:bev_app/screens/main-screen/main_screen.dart';
import 'package:bev_app/widgets/login_buttons.dart';
import 'package:bev_app/widgets/login_textfields.dart';
import 'package:flutter/material.dart';

class EmailScreen  {

  void showLoginSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // This makes it possible to use more height
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom:
                MediaQuery.of(context).viewInsets.bottom, // Adjust for keyboard
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            height:
                MediaQuery.of(context).size.height * 0.5, // Half-screen height
            color: Theme.of(context).colorScheme.background,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                const EmailField(),
                const SizedBox(height: 15),
                const PasswordField(),
                const SizedBox(height: 20),
                PlainButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainScreen()));
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 17,
                  ),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                CreateProfileButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateProfileScreen()));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
