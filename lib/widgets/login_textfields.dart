import "package:flutter/material.dart";

class LoginField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  //final TextEditingController controller;

  const LoginField({
    super.key,
    required this.hintText,
    required this.obscureText,
    //required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: controller,

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(15),

          borderSide: const BorderSide(
            color: Color.fromARGB(255, 130, 129, 129),
            width: 3,
          )
        ),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 222, 213, 213),
            width: 2,
          )
        )
      ),
      obscureText: obscureText,
      
    );
  }
}

class EmailField extends LoginField{
  const EmailField({super.key})
    :super(
      hintText: 'Email',
      obscureText: false,
    );
}

class PasswordField extends LoginField{
  const PasswordField({super.key})
    :super(
      hintText: 'Password',
      obscureText: true,
    );
}

class NameField extends LoginField{
  const NameField({super.key})
    :super(
      hintText: 'Full Name',
      obscureText: false,
    );
}

class ScreenNameField extends LoginField{
  const ScreenNameField({super.key})
    :super(
      hintText: 'Screen Name',
      obscureText: false,
    );
}