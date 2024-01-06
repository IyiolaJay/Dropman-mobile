import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../styles/buttons.dart';
import '../../styles/typography.dart';
import '../utils/input_field.dart';

class SignUpController extends StatefulWidget {
  final Function nextAuthScreen;
  const SignUpController({
    super.key,
    required this.nextAuthScreen,
  });

  @override
  State<SignUpController> createState() => _SignUpControllerState();
}

class _SignUpControllerState extends State<SignUpController> {
  String email = "";
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  //
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //

  //Validators
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email';
    }
    return null;
  }

  //
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid name';
    }
    return null;
  }

  //
  String? validatePhone(String? value) {
    if (value == null || value.isEmpty || value.length <= 1) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty || value.length <= 6) {
      return 'Password should not be less than 6 characters';
    }
    return null;
  }

  void _submitLoginDetails() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      widget.nextAuthScreen();
      _setLoginStatus(true);      
      return;
    }
  }

  void _setLoginStatus(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', status);
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
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: SizedBox(
              width: 306,
              child: Text(
                "Please enter your details to complete sign up",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 36),

          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
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
              validator: validateName,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
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
              validator: validateName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
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

          //
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
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
              validator: validatePhone,
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: InputFields(
              obscureText: true,
              controller: _passwordController,
              hintText: "Password",
              iconUrl: const Icon(Icons.lock),
              inputType: TextInputType.text,
              onSaved: (value) {
                setState(() {
                  password = value;
                });
              },
              validator: validatePassword,
            ),
          ),

          //
          SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: 'By clicking on proceed means you have agreed to our ',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              TextSpan(
                text: 'privacy policy, terms and conditions. ',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                      color: const Color(0xFF328BBD),
                    ),
              ),
            ])),
          ),

          ///
          const Spacer(),
          Center(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                    ),
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  const TextSpan(
                    text: 'Sign in',
                    style: TextStyle(color: Color(0xFF328BBD)),
                  ),
                ],
              ),
            ),
          ),

          //
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: ElevatedButton(
                onPressed: () {
                  _submitLoginDetails();
                },
                style: primaryButtonStyle.copyWith(
                    fixedSize: const MaterialStatePropertyAll(
                        Size(double.maxFinite, 47))),
                child: Text(
                  "Sign Up",
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
