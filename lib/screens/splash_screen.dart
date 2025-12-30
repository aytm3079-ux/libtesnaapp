import 'package:flutter/material.dart';
import 'dart:async';//مكتبة خاصة بالـ Timers
import 'catogries_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0.0; // نسبة شريط التحميل

  @override
  void initState() {//هذه أول دالة تشتغل مرة وحدة فقط
    super.initState();// لانه ندير في اوفر رايد لدالة موجودة ف الافلاتر ضروري نديرها

    // تحديث شريط التحميل تدريجيًا
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {//حدث الشاشة
        _progress += 0.025; // كل مرة يزيد 2.5%
        if (_progress >= 1.0) {
          _progress = 1.0;
          timer.cancel();
        }
      });
    });

    // الانتقال للصفحة الرئيسية بعد 4 ثواني
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  //شكل الصفحة
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,//كل العرض
        height: double.infinity,//كل الطول
        decoration: BoxDecoration(
          gradient: LinearGradient(//تدرج لون
            colors: [Colors.blue.shade400, Colors.blue.shade800],
            begin: Alignment.topLeft,//من وين يبدا
            end: Alignment.bottomRight,//وين ينتهي
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//العناصر ف النص
          children: [
            // الشعار
            Image.asset(
              'assests/images/LibyaMap.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),//مسافة
            // عنوان التطبيق تحت الشعار
            const Text(
              'ليبتيسنا', // اسم التطبيق
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // نص ثانوي
            const Text(
              'دليلك السياحي الليبي',
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 30),
            // شريط التحميل
            Padding(//مسافة 50 من يمين ويسار الصفحة
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: LinearProgressIndicator(//شريط التحميل
                value: _progress,//القيمة
                backgroundColor: Colors.white24,
                color: Colors.white,
                minHeight: 5,//سمك الخط
              ),
            ),
            const SizedBox(height: 20),
            // نص الحقوق
            const Text(
              '© 2025 أية & ليبيا & اميمة',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
