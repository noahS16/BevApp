import 'package:bev_app/widgets/login_buttons.dart';
import 'package:bev_app/widgets/login_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Flexible(child: NameField()),
                SizedBox(width: 5),
                Flexible(child: ScreenNameField()),
              ],
            ),
            const SizedBox(height: 15),
            const EmailField(),
            const SizedBox(height: 15),
            const PasswordField(),
            const SizedBox(height: 20),
            CreateProfileButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
