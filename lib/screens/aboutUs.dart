import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const screenRoute = '/about-us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حول التطبيق'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // أيقونة أكاديمية تعبر عن مشروع جامعي
            const Icon(Icons.school_outlined, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'مشروع مادة الـ Flutter',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: 'ElMessiri',
                color: Colors.blue,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'تم تطوير تطبيق "ليبتيسنا" كمتطلب عملي لمادة برمجة تطبيقات الهواتف الذكية. يهدف المشروع إلى تسليط الضوء على المعالم السياحية في ليبيا باستخدام تقنيات Flutter الحديثة.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, height: 1.6, color: Colors.black87),
              ),
            ),
            const Divider(thickness: 1, indent: 40, endIndent: 40),//السمك البداية والنهاية

            // قسم الطالبات
            const SizedBox(height: 10),
            const Text(
              'إعداد الطالبات:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            const SizedBox(height: 10),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.person_pin, color: Colors.blue),
                    title: Text('أية', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_pin, color: Colors.blue),
                    title: Text('ليبيا', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_pin, color: Colors.blue),
                    title: Text('أميمة', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // قسم الإشراف
            const Text(
              'تحت إشراف الدكتور:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'مصطفى قاباج',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri'
              ),
            ),

            const SizedBox(height: 40),
            const Text(
              'الفصل الدراسي 2025',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}