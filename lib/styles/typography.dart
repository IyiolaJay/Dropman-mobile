import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "colors.dart";

//padding
const double kDefaultPadding = 20;
const double kSmallPadding = 8;

//text styles
final TextStyle subtitleText = GoogleFonts.poppins(
  fontSize: 9,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
);

final TextStyle smallBodyText =  GoogleFonts.poppins(
  fontSize: 13,
  fontWeight:  FontWeight.w600,
  color: kSecondaryColorBlack,
);


final TextStyle bodyText = GoogleFonts.poppins(textStyle: const TextStyle(
 fontSize: 16,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
),
  // fontSize: 16,
  // fontWeight: FontWeight.w600,
  // color: kSecondaryColorBlack,
);

final TextStyle largeBodyText = GoogleFonts.poppins(
  fontSize: 19,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
);

final TextStyle smallHeader = GoogleFonts.poppins(
  fontSize: 23,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
);

final TextStyle mediumHeader = GoogleFonts.poppins(
  fontSize: 27,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
);

final TextStyle largeHeader = GoogleFonts.poppins(
  fontSize: 30,
  fontWeight: FontWeight.w600,
  color: kSecondaryColorBlack,
);
