import 'package:bev_app/screens/create_profile_screen.dart';
import 'package:bev_app/widgets/login_buttons.dart';
import 'package:bev_app/widgets/login_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: EmailField(),
            ),
            PlainLoginButton(onPressed: () {}, text: 'Login'),
          ]),
        ));
  }

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
                PlainLoginButton(
                  onPressed: () {},
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
