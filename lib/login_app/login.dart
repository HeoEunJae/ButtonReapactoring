import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _buildButton(),
    );
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10.0),
        MyButton(
          images: Image.asset('images/glogo.png'),
          text: Text(
            'Login with Google',
            style: TextStyle(color: Colors.black87, fontSize: 15.0),
          ),
          color: Colors.white,
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(height: 10.0),
        MyButton(
          images: Image.asset('images/flogo.png'),
          text: Text(
            'Login with Facebook',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          color: Colors.indigo,
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(height: 10.0),
        MyButton(
          images: Icon(Icons.email),
          text: Text(
            'Login with email',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          color: Colors.green,
          radius: 4.0,
          onPressed: () {},
        ),
      ],
    ),
  );
}
