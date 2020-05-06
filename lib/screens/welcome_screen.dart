import 'package:flutter/material.dart';
import 'package:world_chat1/screens/login_screen.dart';
import 'package:world_chat1/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../widgets/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  static final String id='welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Hero(child: Image.asset('images/worldtalk.png'),
                  tag: 'hero',),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  flex: 5,
                  child: TypewriterAnimatedTextKit(
                      text: ['World Talk'],
                    textStyle: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey.shade900,
                    ),
                    speed: Duration(milliseconds: 500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(
              colour: Colors.lightBlueAccent,
              title: 'Log In',
              pressAction: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundButton(
              colour: Colors.blueAccent,
              title: 'Register',
              pressAction: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

