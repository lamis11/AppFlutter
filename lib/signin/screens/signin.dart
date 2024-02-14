import 'package:exercice/signin/screens/signincontent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exercice/signin/logic/signin_bloc.dart';
import 'package:exercice/signup/screens/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signinscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: SigninScreenContent(),
    );
  }
}
class SigninScreenContent extends StatefulWidget {
  @override
  _SigninScreenContentState createState() => _SigninScreenContentState();
}

class _SigninScreenContentState extends State<SigninScreenContent> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    addListenerToController();
  }

  addListenerToController() {
    _emailController.addListener(() {
      context.read<SigninBloc>().add(SigninEvent.emailChanged(_emailController.text));
    });
    _pwdController.addListener(() {
      context.read<SigninBloc>().add(SigninEvent.pwdChanged(_pwdController.text));
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigninBloc, SigninState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff31D281),
                    Color(0xffffffff),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Image.asset(
                    'assets/logo.png',
                    width: 130.0,
                    height: 130.0,
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 480,
                    width: 325,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            "Let's talk!",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Please login to your account ',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          SizedBox(height: 25),
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF98A3AF)),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabled: true,
                                labelText: 'Email',
                                hintText: 'email',
                                suffixIcon: Icon(
                                  FontAwesomeIcons.envelope,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF98A3AF),
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  height: 16.0 / 13.0,
                                ),
                                hintStyle: TextStyle(color: Colors.transparent),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff31D281)),
                                ),
                              ),
                              controller: _emailController,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 250,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF98A3AF)),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabled: true,
                                labelText: 'Password',
                                hintText: 'password',
                                suffixIcon: Icon(
                                  FontAwesomeIcons.eyeSlash,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF98A3AF),
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  height: 16.0 / 13.0,
                                ),
                                hintStyle: TextStyle(color: Colors.transparent),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff31D281)),
                                ),
                              ),
                              controller: _pwdController,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          GestureDetector(

                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff31D281), // background
                                onPrimary: Color(0xff31D281), // foreground
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                elevation: 0.0,
                                minimumSize: Size(200, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignInContent(userEmail:state.email)),
                                );
                              },
                              child: Text(
                                "Sign in ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ),
                              );
                            },
                            child:ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff31D281), // background
                                onPrimary: Color(0xff31D281), // foreground
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                elevation: 0.0,
                                minimumSize: Size(200, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignupScreen()),
                                );
                              },
                              child: Text(
                                "Sign up ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}