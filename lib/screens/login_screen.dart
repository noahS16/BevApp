import 'package:bev_app/screens/email_screen.dart';
import 'package:bev_app/themes/my_colors.dart';
import 'package:bev_app/widgets/login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(height: 250),
      RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Background color for 'M8'
                      //borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      'Bev',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.beerColor,
                        //decorationThickness: 55,
                        fontSize: 75,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.5, vertical: 0),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor, // Background color for 'M8'
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'M8',
                      style: TextStyle(
                        // decoration: TextDecoration.overline,
                        // decorationColor: Color.fromRGBO(255, 188, 73, 1),
                        // decorationThickness: 2,
                        fontSize: 65,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
      //const Spacer(),
      SvgPicture.asset(
        'lib/assets/icons/bev_hand.svg',
        height: 115,
        width: 115,
      ),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child: Column(
          children: [
            const Text('Login',
                style: TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(height: 10),
            EmailLoginButton(onPressed: () {
              EmailScreen().showLoginSheet(context);
            }, ),
            const SizedBox(height: 15),
            GoogleLoginButton(onPressed: () {}),
          ],
        ),
      ),

      const SizedBox(
        height: 75,
      )
    ])));
  }
}
