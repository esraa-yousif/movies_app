import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF); // FFFFFF
  static const Color lightGray = Color(0xFFB5B4B4); // B5B4B4
  static const Color darkGray = Color(0xFF343534); // 343534
  static const Color black = Color(0xFF000000); // 000000
  static const Color mediumGray = Color(0xFF514F4F); // 514F4F
  static const Color lightSilver = Color(0xFFC6C6C6); // C6C6C6
  static const Color darkSilver = Color(0xFF121312); // 121312
  static const Color slateGray = Color(0xFF3E4A59); // 3E4A59
  static const Color gray70 = Color(0xFF707070); // 707070
  static const Color goldenYellow = Color(0xFFF7B539); // F7B539
  static const Color darkBlack = Color(0xFF1A1A1A); // 1A1A1A
  static const Color brightYellow = Color(0xFFFFBB3B); // FFBB3B
  static const Color silver = Color(0xFFCBCBCB); // CBCBCB
  static const Color charcoalGray = Color(0xFF282A28); // 282A28
  static const Color greenAccent = Color(0xFF48CFAD); // 48CFAD
  static const Color darkCharcoal = Color(0xFF1D1E1D); // 1D1E1D
  static const Color amber = Color(0xFFFFB224); // FFB224

  // ignore_for_file: deprecated_member_use
  static Color black16 = const Color(0xff000000).withOpacity(0.161);
  static Color black91 = const Color(0xff000000).withOpacity(0.91);
  static Color black53 = const Color(0xff000000).withOpacity(0.533);
  static Color white67 = const Color(0xffffffff).withOpacity(0.675);
  static Color white745 = const Color(0xffffffff).withOpacity(0.745);
  static Color white749 = const Color(0xffffffff).withOpacity(0.749);
}

class AppTextStyles {
  // Poppins Font Styles
  static TextStyle poppinsRegular10 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );

  static TextStyle poppinsSemiBold14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static TextStyle poppinsRegular14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static TextStyle poppinsRegular18 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );

  // Inter Font Styles
  static TextStyle interRegular13 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  static TextStyle interRegular10 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: AppColors.lightGray,
  );

  static TextStyle interRegular14 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static TextStyle interRegular8 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 8,
  );

  static TextStyle interRegular15 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static TextStyle interRegular22 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static TextStyle interRegular18 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );

  static TextStyle interRegular20 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );
}
