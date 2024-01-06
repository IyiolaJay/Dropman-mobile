import 'package:flutter/material.dart';
import 'package:dropman/view/tab/tab_screen.dart';
import 'package:dropman/controller/utils/input_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../styles/buttons.dart';
import '../../styles/typography.dart';

class SignInController extends StatefulWidget {
  const SignInController({Key? key}) : super(key: key);

  @override
  State<SignInController> createState() => _SignInControllerState();
}

class _SignInControllerState extends State<SignInController> {
  String email = "";
  String password = "";

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty || value.length <= 6) {
      return 'Password should not be less than 6 characters';
    }
    return null;
  }

  void _onSignInPressed() {
    // Implement logic to handle sign-in using _emailController.text and _passwordController.text
    //implement form validation
  _setLoginStatus(true);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TabScreen(),));
  }
  
  
  void _setLoginStatus(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', status);
  }

  
  Widget _buildEmailField() {
    return InputFields(
      validator: validateEmail,
      hintText: "Email",
      onSaved: (v) {
        setState(() {
          email = v;
        });
      },
      controller: _emailController,
      iconUrl: const Icon(Icons.email_outlined),
      inputType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordField() {
    return InputFields(
      validator: validatePassword,
      hintText: "Password",
      onSaved: (v) {
        setState(() {
          password = v;
        });
      },
      controller: _passwordController,
      iconUrl: const Icon(Icons.lock_outline),
      inputType: TextInputType.text, // Assuming password is alphanumeric
      obscureText: true,
    );
  }

  Widget _buildSignInButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: ElevatedButton(
        onPressed: _onSignInPressed,
        style: primaryButtonStyle.copyWith(
          fixedSize: const MaterialStatePropertyAll(Size(double.maxFinite, 47)),
        ),
        child: Text(
          "Sign In",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }

  

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top :kDefaultPadding + 18, bottom : kDefaultPadding+10),
            child: Text(
              "Enter details to sign in...",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
          _buildEmailField(),
          const SizedBox(height: 20),
          _buildPasswordField(),
          const Spacer(),
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                      ),
                  children: [
                TextSpan(
                  text: "Don't have an account yet?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                const TextSpan(
                  text: 'Sign up',
                  style: TextStyle(color: Color(0xFF328BBD)),
                ),
              ])),
          const SizedBox(
            height: 70,
          ),
          _buildSignInButton(),
        ],
      ),
    );
  }
}
