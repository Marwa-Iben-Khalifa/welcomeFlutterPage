import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_project/Screens/Welcome/login/components/rounded_passwor_field.dart';
import 'package:welcome_project/Screens/Welcome/login/components/rounded_text_field.dart';
import 'package:welcome_project/Screens/Welcome/login/login.dart';
import 'package:welcome_project/Screens/Welcome/signup/components/background.dart';
import 'package:welcome_project/Screens/Welcome/signup/components/or_divider.dart';
import 'package:welcome_project/Screens/Welcome/signup/components/social_icon.dart';
import 'package:welcome_project/components/already_have_an_account_check.dart';
import 'package:welcome_project/components/rounded_button.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
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
              title: "SIGNUP",
              press: () {},
              color: kPrimaryColor,
              textColor: Colors.white),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ));
            },
          ),
          OrDivider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            SocialIcon(
              icon: "assets/icons/facebook.svg",
              press: (){},
            ),
            SocialIcon(
              icon: "assets/icons/twitter.svg",
              press: (){}
            ),
            SocialIcon(
              icon: "assets/icons/google-plus.svg",
              press: (){}
            )
          ])
              ],
            ),
        ));
  }
}

