import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_project/Screens/Welcome/components/background.dart';
import 'package:welcome_project/Screens/Welcome/login/login.dart';
import 'package:welcome_project/Screens/Welcome/signup/signup.dart';
import 'package:welcome_project/components/rounded_button.dart';
import 'package:welcome_project/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              title: "LOGIN",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
            ),
            RoundedButton(
              title: "SIGNUP",
              color: kPrimaryColor.withOpacity(0.27),
              textColor: Colors.black87,
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
