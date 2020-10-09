import 'package:flutter/material.dart';
<<<<<<< Updated upstream

import 'package:flutter_svg/svg.dart';
=======
<<<<<<< HEAD
import 'package:flutter_svg/svg.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Signup/components/background.dart';
import '../../Signup/signup_screen.dart';
=======

import 'package:flutter_svg/svg.dart';
>>>>>>> Stashed changes
import 'package:groweatfood/components/already_have_an_account_acheck.dart';
import 'package:groweatfood/components/rounded_button.dart';
import 'package:groweatfood/components/rounded_input_field.dart';
import 'package:groweatfood/components/rounded_password_field.dart';
import 'package:groweatfood/screens/Signup/signup_screen.dart';

import 'background.dart';
<<<<<<< Updated upstream
=======
>>>>>>> 9d27ae8a14904c0ec737599c53e63be149e9d1c7
>>>>>>> Stashed changes

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/welcome.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
