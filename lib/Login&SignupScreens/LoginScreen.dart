import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:questglobal_assesment/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _ControllerEmail = TextEditingController();
  final TextEditingController _ControllerPassword = TextEditingController();

  String? errorMessage = '';
  bool isLogin = true;

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _ControllerEmail.text, password: _ControllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _ControllerEmail.text, password: _ControllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryfeild(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10.0),
        hintText: title,
        border: const OutlineInputBorder(),
      ),
      style: const TextStyle(
        color: Color(0xFF575F6B),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Fonts/Roboto-Medium.ttf',
      ),
    );
  }

  Widget _errormessage() {
    return Text(errorMessage == '' ? '' : 'There is an error $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00008B),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        isLogin ? 'Login' : 'Register',
        style: const TextStyle(fontSize: 16, fontFamily: 'Roboto-Medium.ttf'),
      ),
      onPressed: () {
        isLogin
            ? signInWithEmailAndPassword()
            : createUserWithEmailAndPassword();
      },
    );
  }

  Widget _RegisterButton() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFF4F4F4),
        foregroundColor: const Color(0xFF00008B),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: const Color(0xFFF4F4F4),
        fixedSize: const Size(150, 40),
      ),
      child: Text(
        isLogin ? '' 'Register' : 'Login',
        style: const TextStyle(fontSize: 15, fontFamily: 'Roboto-Medium.ttf'),
      ),
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    //TODO :- Add Loader View
    // Widget loadingIndicator =
    //     _isLoading ? buildLoaderView(context) : new Container();
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Stack(
        children: <Widget>[
          // SvgPicture.asset(
          //   'assets/CommonImages/Splash.svg',
          //   alignment: Alignment.topCenter,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          // ),
          // ignore: todo
          //TODO :- Func to show BG Image View
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 150.0, 25.0, 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.fromLTRB(90, 8, 0, 0.0),
                      child: Text(
                        "Quest GLT",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF00008B),
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily: 'Roboto'),
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  _entryfeild('Enter Email', _ControllerEmail),
                  const SizedBox(
                    height: 10,
                  ),
                  _entryfeild('Enter Password', _ControllerPassword),
                  const SizedBox(
                    height: 15,
                  ),
                  _errormessage(),
                  const SizedBox(
                    height: 20,
                  ),
                  _submitButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  _RegisterButton()
                ]),
          ),
        ],
      ),
    );
  }
}
