import 'package:flutter/material.dart';
import 'package:dropman/controller/authentication/otp_controller.dart';
import 'package:dropman/controller/authentication/sign_up_controller.dart';
import 'package:dropman/styles/colors.dart';

import 'package:dropman/view/authentication/utils/auth_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final PageController _controller = PageController();

  
 
 @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  void _navigatePages() {
         _controller.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }
  //

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = AppBar().preferredSize.height;
    final double screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBarHeight;   
  
  return Scaffold(
        backgroundColor: kPrimaryColorWhite,
        appBar: buildAuthAppBar("Create an Account", context),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              height: screenHeight * 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: const ExpandingDotsEffect(
                          dotColor: Color(0xFFCBCBCC),
                          dotHeight: 6,
                          dotWidth: 100,
                          activeDotColor: kSecondaryColorBlack
                          
                          ),
                    ),
                  ),
                  const SizedBox(height: 29,),
                  ///
                  Expanded(
                    child: PageView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return SignUpController(nextAuthScreen: _navigatePages,);
                          }
                        return const OTPController();
                      },
                      controller: _controller,
                      itemCount: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
