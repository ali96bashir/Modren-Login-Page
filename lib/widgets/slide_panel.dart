import 'package:flutter/material.dart';

import 'glow_circle.dart';
import 'panel_content.dart';

class SlidePanel extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;

  const SlidePanel({
    super.key,
    required this.onLoginPressed,
    required this.onRegisterPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 850,
      height: 550,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff667EEA), Color(0xff764BA2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -80,
            right: -70,
            child: GlowCircle(size: 230, opacity: 0.10),
          ),
          Positioned(
            bottom: -90,
            left: -60,
            child: GlowCircle(size: 260, opacity: 0.09),
          ),

          // محتوى يظهر عندما تكون اللوحة في اليسار
          Positioned(
            top: 0,
            left: 0,
            width: 425,
            height: 550,
            child: PanelContent(
              title: 'مرحباً بعودتك!',
              subtitle:
                  'سجّل دخولك ببياناتك واستمر في استخدام حسابك بكل سهولة.',
              buttonText: 'تسجيل الدخول',
              onPressed: onLoginPressed,
            ),
          ),

          // محتوى يظهر بالبداية عندما تكون اللوحة في اليمين
          Positioned(
            top: 0,
            left: 425,
            width: 425,
            height: 550,
            child: PanelContent(
              title: 'أهلاً بك!',
              subtitle:
                  'ابدأ رحلتك معنا الآن من خلال إنشاء حساب جديد بخطوات بسيطة.',
              buttonText: 'إنشاء حساب',
              onPressed: onRegisterPressed,
            ),
          ),
        ],
      ),
    );
  }
}
