import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groweatfood/components/already_have_an_account_acheck.dart';
import 'package:groweatfood/components/rounded_button.dart';
import 'package:groweatfood/components/rounded_input_field.dart';
import 'package:groweatfood/components/rounded_password_field.dart';
import 'package:groweatfood/screens/Signup/signup_screen.dart';
import 'package:groweatfood/screens/Login/components/background.dart';
import 'package:groweatfood/screens/homepage.dart';

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
              press: () {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
              },
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
