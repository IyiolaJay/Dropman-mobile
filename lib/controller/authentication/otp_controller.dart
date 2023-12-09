import 'dart:async';

import 'package:flutter/material.dart';

import '../../styles/buttons.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../styles/typography.dart';

class OTPController extends StatefulWidget {
  const OTPController({super.key});

  @override
  State<OTPController> createState() => _OTPControllerState();
}

class _OTPControllerState extends State<OTPController> {
  final TextEditingController _controller = TextEditingController(); //Auto disposed by the PinCodeField

  late StreamController<ErrorAnimationType> errorController;

  final _formKey = GlobalKey<FormState>();
  String currentText ="";
  
  void verifyToken(String otp){
     if(otp.length <6){
        errorController.add(ErrorAnimationType.shake);
      }
      else{
        print("No error");
        // do something with OTP

      }
  }

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Enter SMS Token",
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            child: Text(
              "We sent a 6-digit token to your mobile number you entered. Please enter token here",
              style: theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w300,
                color: const Color(0xFF7F7F7F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          //
          Container(
            margin: const EdgeInsets.only(top: kDefaultPadding + 4),
            width: 334,
            child: Form(
              key: _formKey,
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                pastedTextStyle: theme.textTheme.bodyMedium,
                pinTheme: PinTheme(
                  activeColor: theme.colorScheme.secondary,
                  selectedColor: theme.colorScheme.secondary,
                  inactiveColor: Colors.grey,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 44,
                  fieldWidth: 44,
                  borderWidth: 2,
                  activeFillColor: theme.colorScheme.secondary,
                  errorBorderColor: Colors.redAccent,
                  
                  
                ),
                //
                errorTextSpace: 0,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0,4),
                    blurRadius: 25,
                    spreadRadius: 0,
                    color: Colors.black,
                  )
                ],
                keyboardType: TextInputType.number,
                controller: _controller,
                errorAnimationController: errorController,
                onChanged: (value){
                    setState(() {
                      currentText = value;
                    });
                },
                
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                verifyToken(currentText);
              },
              style: primaryButtonStyle.copyWith(
                  fixedSize: const MaterialStatePropertyAll(
                      Size(double.maxFinite, 47))),
              child: Text(
                "Verify",
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              )),
        ],
      ),
    );
  }
}
