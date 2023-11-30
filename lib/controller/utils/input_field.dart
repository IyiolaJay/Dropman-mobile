import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  final Widget? iconUrl;
  final String? Function(String?)? validator;
  final String hintText;
  final Function(String) onSaved;
  final TextInputType? inputType;
  final TextEditingController controller;
  
   const InputFields({
    super.key,  this.iconUrl, required this.validator, required this.hintText, required this.onSaved, this.inputType, required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
