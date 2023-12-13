import "package:flutter/material.dart";
import "package:dropman/styles/colors.dart";

import "typography.dart";

// Primary button
final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom().copyWith(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  minimumSize: MaterialStateProperty.all(const Size.fromHeight(47)),
  backgroundColor: const MaterialStatePropertyAll(kSecondaryColorBlack),
  textStyle: MaterialStateProperty.all(smallBodyText),
);

//Secondary button
final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom().copyWith(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: kSecondaryColorBlack, width: 2)),
  ),
  minimumSize: const MaterialStatePropertyAll(Size.fromHeight(47)),
  backgroundColor: const MaterialStatePropertyAll(kPrimaryColorWhite),
  textStyle: MaterialStateProperty.all(smallBodyText),
);
