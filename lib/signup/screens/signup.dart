import 'package:exercice/signup/screens/signupcontent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import '../logic/signup_bloc.dart';


class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(),
      child: SignupScreenContent(),
    );
  }
}

class SignupScreenContent extends StatefulWidget {
  @override
  _SignupScreenContentState createState() => _SignupScreenContentState();
}

class _SignupScreenContentState extends State<SignupScreenContent> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _addListenerToController();
  }

  _addListenerToController() {
    _emailController.addListener(() {
      context.read<SignupBloc>().add(SignupEvent.emailChanged(_emailController.text));
    });
    _nameController.addListener(() {
      context.read<SignupBloc>().add(SignupEvent.nameChanged(_nameController.text));
    });
    _pwdController.addListener(() {
      context.read<SignupBloc>().add(SignupEvent.pwdChanged(_pwdController.text));
    });
    _dateController.addListener(() {
      context.read<SignupBloc>().add(SignupEvent.dateChanged(_dateController.text as DateTime));
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _pwdController.dispose();
    _nameController.dispose();
    _dateController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignupBloc>().state;


    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
              child: Scaffold(
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

                      Image.asset(
                        'assets/logo.png',
                        width: 130.0,
                        height: 130.0,
                      ),

                      Container(
                        height: 570,
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
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Please create your account ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 20),
                              NameTextField(controller: _nameController),
                              SizedBox(height: 20),
                              BirthDateTextField(controller: _dateController),
                              SizedBox(height: 20),
                              EmailTextField(controller: _emailController),
                              SizedBox(height: 20),
                              PasswordTextField(controller: _pwdController),
                              SizedBox(height: 30),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff31D281),
                                  onPrimary: Colors.grey,
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  elevation: 0.0,
                                  minimumSize: Size(150, 50),
                                ),
                                onPressed: state.isValid ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUpContent(userName: state.name.value)),
                                  );
                                } : null,
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )

          )
  );
  }
}

class NameTextField extends StatelessWidget {
  final TextEditingController controller;

  const NameTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
        //buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF98A3AF)),
                ),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Name',

                errorText:
                state.name.displayError != null ? 'invalid username' : null,
                hintText: 'name',
                suffixIcon: Icon(
                  FontAwesomeIcons.user,
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
              controller: controller,
            ),
          );
        }
    );
  }
}

class BirthDateTextField extends StatelessWidget {
  final TextEditingController controller;

  const BirthDateTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF98A3AF)),
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: 'Birth date',
          hintText: 'birth date',
          suffixIcon: Icon(
            FontAwesomeIcons.calendar,
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
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            controller.text = DateFormat('yyyy-MM-dd').format(pickedDate);
          }
        },
        controller: controller,
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const EmailTextField({required this.controller});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
       // buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF98A3AF)),
                ),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email',
                errorText:
                state.email.displayError != null ? 'invalid email' : null,
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
              controller: controller,
            ),
          );
        }
    );
  }
}



class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
        //buildWhen: (previous, current) => previous.pwd != current.pwd,
        builder: (context, state) {
          return Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF98A3AF)),
                ),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
                errorText:
                state.pwd.displayError != null ? 'invalid password' : null,
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
              controller: controller,
            ),
          );
        }
    );
  }
}