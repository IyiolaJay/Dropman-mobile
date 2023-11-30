import "package:dropman/styles/colors.dart";
import "package:flutter/material.dart";


// Primary button
final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom().copyWith(
    shape: MaterialStateProperty.all(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
),
 fixedSize:  MaterialStateProperty.all(const Size.fromHeight(47)),
 backgroundColor: const MaterialStatePropertyAll(kSecondaryColorBlack) 
);

//Secondary button
final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom().copyWith(
    shape: MaterialStateProperty.all(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: const BorderSide(color: kSecondaryColorBlack, width: 2)

  ),
),
 fixedSize: const MaterialStatePropertyAll(Size.fromHeight(47)),
 backgroundColor: const MaterialStatePropertyAll(kPrimaryColorWhite) 
);


