import 'package:flutter/material.dart';
import 'package:world_chat1/screens/welcome_screen.dart';
import 'package:world_chat1/screens/login_screen.dart';
import 'package:world_chat1/screens/registration_screen.dart';
import 'package:world_chat1/screens/search_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        SearchScreen.id:(context)=>SearchScreen()
      },
    );
  }
}
