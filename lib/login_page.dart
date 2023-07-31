import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),

             const SizedBox(height: 16.0),

              // Password input field
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    
                    _password = value;
                  });
                },
                obscureText: false,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),

              const SizedBox(height: 16.0),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Implement login logic here
                  // You can validate user input and perform authentication
                  // For this example, let's print the user's email and password
                  print('Email: $_email, Password: $_password');
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
