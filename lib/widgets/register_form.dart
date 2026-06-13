import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_form_container.dart';
import 'auth_text_field.dart';
import 'gradient_button.dart';
import 'social_links.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFormContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'إنشاء حساب',
            style: GoogleFonts.ibmPlexSansArabic(
              color: const Color(0xff111827),
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 24),

          const SocialLinks(),

          const SizedBox(height: 14),
          Text(
            'أو استخدم بريدك للتسجيل',
            style: GoogleFonts.ibmPlexSansArabic(
              color: const Color(0xff666666),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),

          const AuthTextField(hint: 'الاسم الكامل', icon: Icons.person_outline),
          const SizedBox(height: 12),

          const AuthTextField(
            hint: 'البريد الإلكتروني',
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 12),

          const AuthTextField(
            hint: 'كلمة المرور',
            icon: Icons.lock_outline,
            obscureText: true,
          ),

          const SizedBox(height: 24),
          GradientButton(text: 'إنشاء حساب', onTap: () {}),
        ],
      ),
    );
  }
}
