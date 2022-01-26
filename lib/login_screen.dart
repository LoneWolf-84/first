import 'dart:ui';

import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  var emailc = TextEditingController();
  var passwdc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                    'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller:emailc,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted:(value)
                  {
                    print(value);
                  } ,
                  onChanged: (value){print(value);},
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller:passwdc,
                  obscureText: true,
                  onFieldSubmitted:(value)
                  {
                    print(value);
                  } ,
                  onChanged: (value){print(value);},
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailc.text);
                      print(passwdc.text);
                    },
                      child: Text(
                          'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Don\'t have an account?'
                    ),
                    TextButton(
                      onPressed:(){} ,
                      child: Text(
                        'Register Now'
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
