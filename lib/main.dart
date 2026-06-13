import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modrenlogin/widgets/auth_windows_page.dart';

void main() {
  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'واجهة تسجيل الدخول',
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffEEF1FF),
        textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(),
      ),
      home: AuthWindowsPage(),
    );
  }
}
