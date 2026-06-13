import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hover_tap.dart';

class TransparentButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const TransparentButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return HoverTap(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          text,
          style: GoogleFonts.ibmPlexSansArabic(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
