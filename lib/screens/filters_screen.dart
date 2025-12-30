import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
//ستيت فل لاني كل مرة بنغير القيمة
class FiltersScreen extends StatefulWidget {
  static const screenRoute = '/filters';
//بعتت filter,changefilter
  final Function saveFilters;//يلي استقبلتها من المين اسمها change filter
  final Map<String, bool> currentFilters;//من المين اليف نعم وهكدا يلي اختارها المستخدم

  FiltersScreen(this.currentFilters, this.saveFilters);//كونستركتر

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  //المتغيرات
  var _summer = false;
  var _winter = false;
  var _family = false;
  @override
  initState() {
    _summer = widget.currentFilters['summer'] ?? false;
    _winter = widget.currentFilters['winter'] ?? false;
    _family = widget.currentFilters['family'] ?? false;
    super.initState();
  }
//ترجع ويدجت لانها اعم
  Widget buildSwitchListTile(//نبعتلها العنوان+النص يلي تحته+القيمة الحالية للستوش
      String title,
      String subtitle,
      bool currentValue,
      updateValue ,// الدالة يلي ترجع التحديث
      ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue, // الآن سيعمل بدون أخطاء

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الفلترة'),
        actions: [//بطمة الحفظ
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {//القيمة يلي اختارها الوبون من السوتش
                'summer': _summer,//
                'winter': _winter,
                'family': _family,
              };
              widget.saveFilters(selectedFilters);//لان بنستقبلها ف نفس المكان
            },
          )
        ],
      ),
      drawer: AppDrawer(),//باش تقعد مفتوحة حتى اهني
      body: Column(
        children: [
          SizedBox(height: 50),//مسافة من بداية الصفحة
          Expanded(//لست فيو دالخ عمود طول ماتجيش ضروري نديرها
            child: ListView(//لاني نعرف عناصرها
              children: [
                buildSwitchListTile(//هادي الودجت يلي كانها زر متحول
                  'الرحلات الصيفية فقط',
                  'إظهار الرحلات في فصل الصيف فقط',
                  _summer,
                  (newValue) {//دالة تحدث ف القيمة كل مرة
                    setState(() {
                      _summer = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'الرحلات الشتوية فقط',
                  'إظهار الرحلات في فصل الشتاء فقط',
                  _winter,
                  (newValue) {
                    setState(() {
                      _winter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'للعائلات',
                  'إظهار الرحلات التي للعائلات فقط',
                  _family,
                  (newValue) {
                    setState(() {
                      _family = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
