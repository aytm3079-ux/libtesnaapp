import 'package:flutter/material.dart';
import '../screens/category_trip_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CategoryItem(this.id, this.title, this.imageUrl, {Key? key}) : super(key: key);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(//انتقل للصفحة الاخرى
      CategoryTripsScreen.screenRoute, //مسار الصفحة
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(//لجعل الكارد قابل للضغط و فيه تاثير
      onTap: () => selectCategory(context),//arrow function
      borderRadius: BorderRadius.circular(15),//حوف دائرية
      splashColor: Theme.of(context).primaryColor.withOpacity(0.3),//لون التاثير عند الضغط
      child: Ink(//بدل الكونتينر لان التاثير يبان
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,//تغطي كل الكارد
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), // overlay أسود شفاف
              BlendMode.darken,//غطي الصورة بالأسود شويّة
            ),
          ),
          //ظل خفيف للكارد
          boxShadow: const [// Flutter يعرف أنها ثابتة وقت الكومبايل → أسرع وأقل استهلاك للذاكرة
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,//انتشار الظل
              offset: Offset(0, 5),//ازاحة شوية لتحت فقط
            ),
          ],
        ),
        child: Center(//باش يجي النص ف النص
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
