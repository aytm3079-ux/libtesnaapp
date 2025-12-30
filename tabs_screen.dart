import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../screens/catogries_screen.dart';
import './favorites_screen.dart';
import '../models/trip.dart';
import '../widgets/app_drawer.dart';
//لاني بنغير ونحتاج لقيمة العداد
class TabsScreen extends StatefulWidget {
  final List<Trip> favoriteTrips;//جبتها من المين للرحلات المفضلة

  const TabsScreen(this.favoriteTrips, {super.key});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;//القيمة الافتراضية
  //لست باش نعرف رقم يلي راصة عليه ماهو بالترتيب وماب باش نربط الصفحة بالاسم
  late List<Map<String, dynamic>> _screens;//لست من الودجت فيها الصفحيت يلي مفروض ينفتحوا
//late لان بعدين ف الانت ستيت بنعطيها القيم
  @override
  void initState() {//تنفد مرة واحدة اول ماننشء الشاشة
    _screens = [
      {
        'Screen': CategoriesScreen(),
        'Title': 'تصنيفات الرحلات', // أضفنا العنوان هنا
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'الرحلات المفضلة', // أضفنا العنوان هنا
      },
    ];
    super.initState();//يعني الدالة الاب حافظ عليها وزيدها الكود هدا
  }
//لما بننغط على الايكون تتنفد الدالة هادي
  void _selectScreen(int index) {//_ يعني الدالة فقط داخل نفس الكلاس والاندكس يتم تمريره من الفلاتر
    //ترجعلي اندكس الايقونة يلي رصيتها 0 او 1
    setState(() {
      _selectedScreenIndex = index;
    });
    //يعني كل مانرص على ايقونة ياخد رقمها وفي سيت ستيت لما يعاود بناء الصفحة يحدث القيمة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // التعديل هنا في الـ AppBar ليكون النص بجانب الأيقونة مباشرة
      appBar: AppBar(
              //نعطيه الاندكس والعنواننجيبهم من اللست
        title: Text(_screens[_selectedScreenIndex]['Title'],
            style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: false, // لكي لا يظهر النص في المنتصف، بل بجانب الأيقونة
        elevation: 0,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),//لون علامة الخطوط
      ),
      //توا بنضيف قائمة السحب على الجنب
      drawer: AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,//يعني بنعرض ودجت
      bottomNavigationBar: BottomNavigationBar(//يساعدني نضيف الشريط ف الاسفل
        onTap: _selectScreen,//لما المستخم بضغط على اي ايقونة
        backgroundColor: Colors.blue,//لون الشريط ازرق
        selectedItemColor: Colors.yellow,//الايقونة يلي تم الضغط عليها
        unselectedItemColor: Colors.white,//الايقونة اللتي لم يتم الضغط عليها
        currentIndex: _selectedScreenIndex,//اما وحدة مختارتها باش بحدد اللون الاصفر
        type: BottomNavigationBarType.fixed,//يعني ثابت
        items: [//العناصر يلي بنضيفهم
          BottomNavigationBarItem(//الاقون الواحد
            icon: Icon(Icons.dashboard),//اسمها زي شاشة عرض
            label: 'التصنيفات',//الاسم
          ),
          BottomNavigationBarItem(//الايقون التاني
            icon: Icon(Icons.star),//ايقونة المفضلة
            label: 'المفضلة',//الاسم يلي تحتها
          ),
        ],
      ),
    );
  }
}