import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BlocObserver.dart';
import 'app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

