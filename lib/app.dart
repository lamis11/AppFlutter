import 'package:exercice/home/home.dart';
import 'package:exercice/signin/logic/signin_bloc.dart';
import 'package:exercice/signin/screens/signin.dart';
import 'package:exercice/signup/logic/signup_bloc.dart';
import 'package:exercice/signup/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(387, 812),
      builder: (context, child) => MaterialApp(
        title: ' App ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<SigninBloc>(create: (context) => SigninBloc()),
            BlocProvider<SignupBloc>(create: (context) => SignupBloc()),
          ],
          child: HomeScreen(),
        ),
      ),
    );
  }
}
