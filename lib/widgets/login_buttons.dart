import 'package:bev_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the SVG package

class LoginWithButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String svgPath;
  final String buttonText;
  final Color buttonColor;

  const LoginWithButton({
    super.key,
    required this.onPressed,
    required this.svgPath,
    required this.buttonText,
    this.buttonColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(0, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5, // Button shadow
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgPath, // Path to the SVG file
            height: 30,
            width: 30,
          ),
          //const SizedBox(width: 25), // Space between the logo and text
          //const Spacer(),
          Expanded(
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class GoogleLoginButton extends LoginWithButton {
  const GoogleLoginButton({super.key, required super.onPressed})
      : super(
          svgPath: 'lib/assets/icons/google-color-svgrepo-com.svg',
          buttonText: 'Continue With Google',
          buttonColor: AppColors.whiteColor,
        );
}

class EmailLoginButton extends LoginWithButton {
  const EmailLoginButton({super.key, required super.onPressed})
      : super(
          svgPath: 'lib/assets/icons/email.svg',
          buttonText: 'Continue With Email',
        );
}

class PlainLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;

  const PlainLoginButton({
    super.key,
    required this.onPressed,
    this.text = 'Login',
    this.buttonColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5, // Button shadow
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CreateProfileButton extends PlainLoginButton{
  const CreateProfileButton({
    super.key, 
    required super.onPressed, 
  })
    : super(
      buttonColor: AppColors.whiteColor,
      text: 'Create Profile',
    );
}


