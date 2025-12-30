import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;//الحاجات يلي بتطلع ف الكارد الواحد
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  const TripItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
  }) : super(key: key);

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'شتاء';
      case Season.Spring:
        return 'ربيع';
      case Season.Summer:
        return 'صيف';
      case Season.Autumn:
        return 'خريف';
    }
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return 'استكشاف';
      case TripType.Recovery:
        return 'نقاهة';
      case TripType.Activities:
        return 'أنشطة';
      case TripType.Therapy:
        return 'معالجة';
      case TripType.Cultural:
        return 'عادات';
    }
  }

  void selectTrip(BuildContext context) {//لعرض صورة مؤقتة لما نضغط على الكارد
Navigator.of(context).pushNamed(TripDetailScreen.screenRoute,arguments:id );
  }//حنبعت id فقط

  @override
  Widget build(BuildContext context) {
    return InkWell(//باش نضغط على الكارد
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(//مستطيلة وحوافها دائرية
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,//الظل الخفيف
        margin: const EdgeInsets.all(10),//مسافة خارجية
        child: SingleChildScrollView( // ضفنا التمرير
          child: Column(
            children: [
              Stack(//لان بندير طبقات الصورة والطبقة السودة والنص
                children: [
                  ClipRRect(//باش ندير حواف دائرية للصورة
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,//تاخد العرض كامل
                      fit: BoxFit.cover,//الصورة كاملة
                    ),
                  ),
                  Container(//يلي فيها النص والطبقة الكحلة
                    height: 250,
                    alignment: Alignment.bottomRight,//مكان النص
                    padding: const EdgeInsets.symmetric(//المسافة
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(//الظل الاسود
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.9),
                        ],
                        stops: const [0.6, 1],//من اما نقطى يبدا
                      ),
                    ),
                    child: Text(
                      title,
                      style:Theme.of(context).textTheme.headlineMedium,
                      overflow: TextOverflow.fade,//لو النص طويل يختفي تدريجيًا
                    ),
                  ),
                ],
              ),
              Padding(//صف الايقونات صف ف صف
                padding: const EdgeInsets.all(20.0),//مسافة
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,//مسافة بينهم
                  children: [
                    Row(
                      children: [
                        const Icon(//الايقونة
                          Icons.today,//ايقونة  مدة ارحلة
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 6),//مسافة بين بين الأيقونة والنص
                        Text(//النص
                          '$duration أيام',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.wb_sunny,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          seasonText,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.family_restroom,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          tripTypeText,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
