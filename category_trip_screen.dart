import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../widgets/trip_item.dart';

class CategoryTripsScreen extends StatefulWidget {
  static const screenRoute = '/category-trips';//المسار

  final List<Trip> availableTrips;//لست من يلي اختارها من المستخدم من الفلترة

  CategoryTripsScreen(this.availableTrips);//كونستركتر امتاعها

  @override
  _CategoryTripsScreenState createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late String categoryTitle;//اسم المدينة
  late List<Trip> displayTrips;//الرحلات المفلترة حسب المدينة المختارة
  var _loadedInitData = false;//يعني مش مفلتر تفضل فلتر

  @override
  void didChangeDependencies() {//بدل من intstate لانه عندي context
    if (!_loadedInitData) {//طالما ان الكود متنفدش
      final routeArgument =
      ModalRoute.of(context)!.settings.arguments as Map<String, String>;// يلي هما id,title
      final categoryId = routeArgument['id'];
      categoryTitle = routeArgument['title']!;//عرفته فوق لانه بنحتاجه بعدين
      displayTrips = widget.availableTrips.where((trip) {//ودجت لانها جاية من المين
        return trip.categories.contains(categoryId);//يعني خلاص اخترت ف المدينة يلي نبيها
      }).toList();
      _loadedInitData = true;//تم الفلترة خلاص
    }
    super.didChangeDependencies();//يعني استعدي الدالة من فلاتر ونفدها باش ميصيرش خطا
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // هنا سيعرض اسم القسم (مثل: جبال) بدلاً من "دليلك الليبي"
        title: Text(
          categoryTitle,
          style: Theme.of(context). textTheme.headlineMedium,
          ),

        backgroundColor: Colors.blue,
        // سهم الرجوع سيظهر تلقائياً لأننا حذفنا الـ drawer
        iconTheme: const IconThemeData(color: Colors.white),

      ),
      body: ListView.builder(//لان منعرفش كم حاجة
        itemBuilder: (ctx, index) {
          return TripItem(//نبعتهمله
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}