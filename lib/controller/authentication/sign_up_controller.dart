import 'package:flutter/material.dart';

import '../../styles/buttons.dart';
import '../utils/input_field.dart';

class SignUpController extends StatefulWidget {
  const SignUpController({super.key});

  @override
  State<SignUpController> createState() => _SignUpControllerState();
}

class _SignUpControllerState extends State<SignUpController> {
  String email = "";
  String firstName= "";
  String lastName= "";
  String phoneNumber= "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  //
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  
  //TODO implement remaining validators
  //email validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email';
    }
    return null;
  }
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid name';
    }
    return null;
  }

  void _submitLoginDetails() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      return;
    }
  }


  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: InputFields(
                controller: _firstNameController,
                hintText: "First Name",
                iconUrl: const Icon(Icons.person),
                inputType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
                validator: validateEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: InputFields(
                controller: _lastNameController,
                hintText: "Last Name",
                iconUrl: const Icon(Icons.person),
                inputType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
                validator: validateEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: InputFields(
                controller: _emailController,
                hintText: "Email",
                iconUrl: const Icon(Icons.email_outlined),
                inputType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    email = value;
                  });
                },
                validator: validateEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: InputFields(
                controller: _phoneNumberController,
                hintText: "Phone Number",
                iconUrl: const Icon(Icons.phone),
                inputType: TextInputType.phone,
                onSaved: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
                validator: validateEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: InputFields(
                controller: _passwordController,
                hintText: "Password",
                iconUrl: const Icon(Icons.lock),
                inputType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    password = value;
                  });
                },
                validator: validateEmail,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {
                    _submitLoginDetails();
                  },
                  style: primaryButtonStyle.copyWith(
                      fixedSize: const MaterialStatePropertyAll(Size(double.maxFinite, 47))),
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
            ),
          ]),
    );
  }
}
