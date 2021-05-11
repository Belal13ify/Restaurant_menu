import 'package:flutter/material.dart';
import 'constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool secured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffff59c),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: kTextFieldDecoration.copyWith(
                            labelText: 'User Name'),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      KRequired,
                      SizedBox(
                        height: 25.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: kTextFieldDecoration.copyWith(
                            labelText: 'Email', prefixIcon: Icon(Icons.email)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      KRequired,
                      SizedBox(
                        height: 25.0,
                      ),
                      TextField(
                        obscureText: secured,
                        keyboardType: TextInputType.text,
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                secured = !secured;
                              });
                            },
                            icon: Icon(
                              secured
                                  ? Icons.visibility_sharp
                                  : Icons.visibility_off,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      KRequired
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'menu');
                      },
                      child: Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
