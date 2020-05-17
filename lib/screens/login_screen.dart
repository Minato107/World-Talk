import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_chat1/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:world_chat1/screens/search_screen.dart';
import 'package:world_chat1/screens/welcome_screen.dart';
import '../widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  static final String id='login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth=FirebaseAuth.instance;
  String email;
  String password;
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
            Container(
              height: 100.0,
              child: Hero(child: Image.asset('images/worldtalk.png'),
              tag: 'hero',),
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email=value;
              },
              decoration: forInput.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password=value;
              },
              decoration: forInput.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundButton(
              colour: Colors.lightBlueAccent,
              title: 'Log In',
              pressAction: ()async {
                try{
                  await _auth.signInWithEmailAndPassword (
                      email: email, password: password);
                  Navigator.pushNamed(context, SearchScreen.id);
                }catch(e){
                  Navigator.pushNamed(context, WelcomeScreen.id);
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
