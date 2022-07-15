import 'package:constructjet/constants/Global_Variables.dart';
import 'package:constructjet/features/auth/screen/Auth_Screen.dart';
import 'package:constructjet/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConstructJet());
}

class ConstructJet extends StatelessWidget {
  const ConstructJet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ConstructJet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
