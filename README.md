
# Data Validation Helpers

A lightweight Flutter package providing validation helpers for common inputs like emails, passwords, and phone numbers.

## Features

- **Email Validation**: Check if an email follows the correct format.
- **Password Strength Validation**: Validate password strength based on length, characters, and complexity.
- **Username Validation**: Ensure the username follows specific rules such as allowed characters and minimum length.
- **Phone Number Validation**: Validate phone numbers to ensure they contain only digits and meet length requirements.

## Getting started

To start using `data_validation_helpers`, add it to your `pubspec.yaml` file:

![Demo](demo.gif)

```yaml

## Usage

import 'package:data_validation_helpers/data_validation_helpers.dart';

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        controller: emailController,
        validator: FormValidators.validateEmail,
        decoration: InputDecoration(
          hintText: 'Email',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      
      TextFormField(
        controller: passwordController,
        obscureText: true,
        validator: FormValidators.validatePassword,
        decoration: InputDecoration(
          hintText: 'Password',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            print("Form is valid");
          }
        },
        child: Text('Submit'),
      ),
    ],
  ),
)
```

## Next Goals

- **URL Validation**: Validate URLs to check for valid protocols and structure.
- **Date Validation**: Check if a date matches specific formats like `dd/mm/yyyy` or `yyyy-mm-dd`.
- **Credit Card Validation**: Validate credit card numbers using Luhn's algorithm.