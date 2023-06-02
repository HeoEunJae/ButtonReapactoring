import 'package:flutter/material.dart';

import 'login_app/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sign in',
      home: LogIn(),
    );
  }
}
