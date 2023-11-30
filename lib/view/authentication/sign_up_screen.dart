import 'package:dropman/controller/authentication/sign_up_controller.dart';
import 'package:dropman/styles/colors.dart';
import 'package:flutter/material.dart';

import 'package:dropman/view/authentication/utils/auth_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});


  @override
  Widget build(BuildContext context) {
     final double appBarHeight = AppBar().preferredSize.height;
    final double screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - appBarHeight;


    return Scaffold(
        backgroundColor: kPrimaryColorWhite,
        appBar: buildAuthAppBar("Create an Account", context),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              height: screenHeight * 1,
              child: Column(
                children:  const [
                  
                  Expanded(child: SignUpController()),
                ],
              ),
            ),
          ),
        ));
  }
}
