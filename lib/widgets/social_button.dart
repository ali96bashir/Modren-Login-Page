import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hover_tap.dart';

class SocialButton extends StatefulWidget {
  final String label;

  const SocialButton({super.key, required this.label});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: HoverTap(
        onTap: () {},
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeOut,
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: isHovered ? const Color(0xff667EEA) : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: isHovered ? const Color(0xff667EEA) : const Color(0xffE0E0E0),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: isHovered
                    ? const Color(0xff667EEA).withOpacity(0.35)
                    : Colors.black.withOpacity(0.045),
                blurRadius: isHovered ? 16 : 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.label,
              style: GoogleFonts.ibmPlexSansArabic(
                color: isHovered ? Colors.white : const Color(0xff667EEA),
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
