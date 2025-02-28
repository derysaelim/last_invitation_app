import 'package:flutter/material.dart';
import 'package:last_invitation_app/widget/constants.dart';
import 'package:last_invitation_app/widget/custom_textfield.dart';

import '../nav/custom_navbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 42, right: 42),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/logo.png")),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kprimaryColor),
                      ),
                      hintText: 'Username/E-mail'),
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ButtomNavbarCustom()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF34BF4C),
                      minimumSize: Size(310, 44),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
