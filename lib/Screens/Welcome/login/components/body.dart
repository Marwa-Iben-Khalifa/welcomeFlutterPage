import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_project/Screens/Welcome/login/components/background.dart';
import 'package:welcome_project/Screens/Welcome/login/components/rounded_passwor_field.dart';
import 'package:welcome_project/Screens/Welcome/login/components/rounded_text_field.dart';
import 'package:welcome_project/Screens/Welcome/signup/signup.dart';
import 'package:welcome_project/components/already_have_an_account_check.dart';
import 'package:welcome_project/components/rounded_button.dart';
import 'package:welcome_project/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputText(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedButton(
                title: "LOGIN",
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
