
# Form Validation Utils

A lightweight Flutter package providing validation helpers for common inputs like emails, passwords, and phone numbers.

## Features

- **Email Validation**: Check if an email follows the correct format.
- **Password Strength Validation**: Validate password strength based on length, characters, and complexity.
- **Username Validation**: Ensure the username follows specific rules such as allowed characters and minimum length.
- **Phone Number Validation**: Validate phone numbers to ensure they contain only digits and meet length requirements.

## Getting started

To start using `form_validation_utils`, add it to your `pubspec.yaml` file:

![Demo](demo.gif)

```yaml

## Usage

import 'package:form_validation_utils/form_validation_utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: emailController,
                  validator:
                      FormValidators.validateEmail, // validate email input
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: passwordController,
                  validator:
                      FormValidators.validatePassword, // validate email input
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Form is valid");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

## Next Goals

- **URL Validation**: Validate URLs to check for valid protocols and structure.
- **Date Validation**: Check if a date matches specific formats like `dd/mm/yyyy` or `yyyy-mm-dd`.
- **Credit Card Validation**: Validate credit card numbers using Luhn's algorithm.