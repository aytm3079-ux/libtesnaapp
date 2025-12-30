import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import '../screens/aboutUs.dart'; // تأكدي من صحة اسم الملف هنا

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
//الدالة يلي بستدعليها ونبعتلها النص + الايقونة +الدالة لما نرص علهيا
  Widget buildListTile(String title, IconData icon, VoidCallback onTapLink) {
    return ListTile(//ترجعلي هادي فيها حاجتين يمين ويسار
      leading: Icon(icon, size: 30, color: Colors.blue),//يلي ع اليمين
      title: Text(//يلي ع اليسار
        title,//يلي بنبعته
        style: const TextStyle(//تنسيقه
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapLink,//يلي بنبعتها
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(//العناصر بيكونوا ف عمود
        children: [
          Container(
            height: 100,//ارتفاع
            width: double.infinity,//كل العرض
            padding: const EdgeInsets.only(top: 40),//مسافات
            alignment: Alignment.center,//باش يجو ف نص العمود
            color: Colors.blue,//اللون
            child:  Text(//النص وتنسيقه
              'دليلك السياحي',
              style: Theme.of(context). textTheme.headlineMedium,
            ),
          ),

          const SizedBox(height: 20),//مسافة شويةارتفاع هدا
          buildListTile(//استدعيت الدالة
            'الرحلات',
            Icons.card_travel,
                () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'الفلترة',
            Icons.filter_list,
                () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.screenRoute);//يفتح الصفحة ويسكر يلي قبلها
            },
          ),
          buildListTile(
            'من نحن',
            Icons.info,
                () {
              Navigator.of(context)
                  .pushReplacementNamed(AboutUsScreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }
}