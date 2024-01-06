import 'package:flutter/material.dart';

import 'package:dropman/view/utils/auth_app_bar.dart';
import 'package:dropman/controller/authentication/sign_in_controller.dart';
import '../../styles/typography.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

 
  @override
  Widget build(BuildContext context) {

    final double appBarHeight = AppBar().preferredSize.height;
    final double screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBarHeight;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: buildAuthAppBar("Login Account", context),
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SignInController(),
            ),
          ),
        ),
      ),
    );
  }
}
