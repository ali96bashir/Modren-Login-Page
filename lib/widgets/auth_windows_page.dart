import 'package:flutter/material.dart';

import 'login_form.dart';
import 'register_form.dart';
import 'slide_panel.dart';

class AuthWindowsPage extends StatefulWidget {
  const AuthWindowsPage({super.key});

  @override
  State<AuthWindowsPage> createState() => _AuthWindowsPageState();
}

class _AuthWindowsPageState extends State<AuthWindowsPage> {
  bool isRegister = false;

  void showRegister() {
    setState(() {
      isRegister = true;
    });
  }

  void showLogin() {
    setState(() {
      isRegister = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    const cardWidth = 850.0;
    const cardHeight = 550.0;
    const halfWidth = cardWidth / 2;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffEEF1FF), Color(0xffF6F0FF), Color(0xffFFFFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: cardWidth,
                height: cardHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.30),
                      blurRadius: 60,
                      offset: const Offset(0, 20),
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    // واجهة تسجيل الدخول - تظهر بالبداية في اليسار
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                      top: 0,
                      left: isRegister ? halfWidth : 0,
                      width: halfWidth,
                      height: cardHeight,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 280),
                        opacity: isRegister ? 0 : 1,
                        child: IgnorePointer(
                          ignoring: isRegister,
                          child: const LoginForm(),
                        ),
                      ),
                    ),

                    // واجهة إنشاء الحساب - تظهر بعد الضغط في اليمين
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                      top: 0,
                      left: isRegister ? halfWidth : 0,
                      width: halfWidth,
                      height: cardHeight,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 280),
                        opacity: isRegister ? 1 : 0,
                        child: IgnorePointer(
                          ignoring: !isRegister,
                          child: const RegisterForm(),
                        ),
                      ),
                    ),

                    // اللوحة البنفسجية المتحركة
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                      top: 0,
                      left: isRegister ? 0 : halfWidth,
                      width: halfWidth,
                      height: cardHeight,
                      child: ClipRect(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                              top: 0,
                              left: isRegister ? 0 : -halfWidth,
                              width: cardWidth,
                              height: cardHeight,
                              child: SlidePanel(
                                onLoginPressed: showLogin,
                                onRegisterPressed: showRegister,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
