import 'package:flutter/material.dart';

import '../app_data.dart';
import '../widgets/category_item.dart';
class CategoriesScreen extends StatelessWidget {
   static final ScreenRoute='/';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,//اقصى عرض للمربع الواحد
        childAspectRatio: 7 / 8,//نسبة الطول لللعرض
        mainAxisSpacing: 10,//الماسفة بين الصفوف
        crossAxisSpacing: 10,//المسافة بين الاعمدة
      ),
      children: categories_data.map(//تمر على كل عنصر ف الللست وسميته categoryDara
            (categoryData) => CategoryItem(//وطبق عليها
          categoryData.id,
          categoryData.title,
          categoryData.imageUrl,
        ),
      ).toList(),//ورجعها لست باش نعرضها
    );
  }
}
