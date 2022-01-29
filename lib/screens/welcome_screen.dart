import 'package:flutter/material.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/openinfo.jpg'),
                  height: 130.0,
                ),
              ),
              // Text(
              //   'OpenInfo Chat',
              //   style: TextStyle(
              //     fontSize: 35.0,
              //     fontWeight: FontWeight.w900,
              //     color: Colors.black,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // SizedBox(
              //   height: 48.0,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  elevation: 10.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      //Go to login screen.
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Iniciar Sesion',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 10.0,
                  child: MaterialButton(
                    onPressed: () {
                      //Go to registration screen.
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Registrar Usuario',
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Or via soocial media',
                  // "O Redes Sociales",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SignInButton(
                Buttons.Google,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                onPressed: () {},
              ),
              // SignInButton(
              //   Buttons.Apple,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   elevation: 10,
              //   onPressed: () {},
              // ),
              SignInButton(
                Buttons.Facebook,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
