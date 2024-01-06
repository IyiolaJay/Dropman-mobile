import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  final Widget? iconUrl;
  final String? Function(String?)? validator;
  final String hintText;
  final Function(String) onSaved;
  final TextInputType? inputType;
  final TextEditingController controller;
  final bool obscureText;
  
   const InputFields({
    super.key,  
    this.iconUrl, 
    required this.validator, 
    required this.hintText, 
    required this.onSaved, 
    this.inputType, 
    required this.controller, 
     this.obscureText = false,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
                obscureText: obscureText,
                controller: controller,
                keyboardType: inputType,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                validator:
                  validator
                ,
                onSaved: (value) {
                   onSaved(value!);
                },

                decoration: InputDecoration(
                  
                  errorStyle: const TextStyle(
                    fontSize: 0,
                    height: 0,
                    ),
                  focusedBorder:  OutlineInputBorder(
                    borderSide:  const BorderSide(
                        color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: iconUrl, 
                  hintText: hintText,
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFF7F7F7F)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              );
  }
}
