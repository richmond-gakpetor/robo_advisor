import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/robo-advisor.jpg',
                width: 100.0,
                height: 100.0,
                
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your email',
                  labelText: 'Email *',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Enter your password?',
                  labelText: 'Password *',
                ),
                
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                child: const Text('Sign Up'),
              ),
              // const Divider(
              //   thickness: 0.5,
              //   color: Colors.grey,
              // ),
              const SizedBox(height: 25),
              const Text('Already have an account?',
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
