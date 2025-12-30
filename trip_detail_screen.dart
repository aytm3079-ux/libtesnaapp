import 'package:flutter/material.dart';
import '/app_data.dart';

class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';//المسار
//استقبلتهم من المين
  final Function manageFavorite;//امتاع الحدف والاضافة
  final Function isFavorite;//مفضلة او لا باش تلون الايقونة

  TripDetailScreen(this.manageFavorite, this.isFavorite);
//ندير دالة لتحسين الكود
  Widget buildSectionTitle(BuildContext context, String titleText) {
   //الكونتينر يلي فيها الانشطة
    return Container(
      //مسافة للكونتينر يلي فيها الانشطة
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //مكانها
      alignment: Alignment.topRight,
      //كلمة الانشطة
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
//دالة اللست فيو
  Widget buildListViewContainer(Widget child) {//بنستقب ودجت
    //حطيتها ف كونتينر
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,//لون الكونتينر ابيض
        border: Border.all(color: Colors.grey),//بوردر رصاصي
        borderRadius: BorderRadius.circular(10),//حواف دائرية
      ),
      height: 200,//ارتفاعها
      padding: EdgeInsets.all(10),//مسافة داخلية
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    //اهني استقبت id كنص
    //ف الاولى نرجع قيمة المعرف فقط ف التانية نرجع اوبجكت
    final tripId = ModalRoute.of(context)!.settings.arguments as String;
     final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);
   //نجيب بيانات الرحلة عن طريق المعرف اول واحد نلقاه يطابق الشرط
    return Scaffold(
      appBar: AppBar(
        //$ يجيب القيمة يعني مش نص ,الاقواس لما بنجيب قيمة من اوبجكت
        title: Text('${selectedTrip.title}'),
        // --- أضيفي الـ actions من هنا ---
        actions: [//لست لاضافة الايكون
          IconButton(
            icon: const Icon(Icons.share),//علامة المشاركة
            onPressed: () {//لما نضغط عليها
              ScaffoldMessenger.of(context).showSnackBar(//المسج يلي بيطلع
                SnackBar(
                  content: const Text(
                    'تم نسخ رابط الرحلة لمشاركتها!',//الجملة
                    textAlign: TextAlign.center,//مكانها
                    style: TextStyle(fontFamily: 'ElMessiri'),//نوع الخط
                  ),
                  backgroundColor: Colors.orange,//الخلفية
                  duration: const Duration(seconds: 2),//المدة يلي بتقعدها
                  behavior: SnackBarBehavior.floating,//الرسالة تطفو مش لاصقة لوطى
                  margin: const EdgeInsets.all(20), // ليعطي مسافة من الحواف
                  shape: RoundedRectangleBorder(//شكلها  مستطيل بحواف دائرية
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
          ),
        ],
        // -------------------------
      ),
      body: SingleChildScrollView(//باش نقدروا نديروا سكرول للعمود
        child: Column(
          children: [
            Container(//اول حاجة كونتينر يلي فسطها الصورة
              height: 300,
              width: double.infinity,//كامل العرض
              child: Image.network(
                selectedTrip.imageUrl,//ناخد الصورة من الاوبجكت يلي استقبلته
                fit: BoxFit.cover,//الصورة تغطي كل المساحة المتوفرة
              ),
            ),
            SizedBox(height: 10),//مسافة
            buildSectionTitle(context, 'الأنشطة'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length, //على حسب عدد الانشطة امتاعي
                //توا كانه بندير لووب وبرجع كارد
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(//حطيت النصوص ف بادنق باش نخلي مسافة
                    padding: const EdgeInsets.symmetric(//هادي المسافة
                      vertical: 5,
                      horizontal: 10,
                    ),
                    //يجيبلي الاكتيفيتي كنص كل وحدة ف سططرر
                    child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),//مسافة
            buildSectionTitle(context, 'البرنامج اليومي'),//نادينا نفس الدالة
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.program.length,//قداش عندي برنامج
                itemBuilder: (ctx, index) => Column(//درت عمود لان عندي listtile+divider
                  children: [
                    //هادي تعطيك قسمين الرقم والنص
                    ListTile(
                      leading: CircleAvatar(//شكل الدائرة
                        backgroundColor: Colors.orange, // هنا غيري لون الدائرة للأزرق
                        foregroundColor: Colors.black,
                        child: Text('يوم ${index + 1}'),//يوم واحد وهكدا
                      ),
                      //توا البرامج القسم يلي على اليسار
                      title: Text(selectedTrip.program[index]),
                    ),
                    Divider(),//الخط الرفيع
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // نصف القطر يجعلها دائرة
        ),

        // 2. لون الأيقونة داخل الدائرة (الأبيض لكي تظهر بوضوح على الأزرق)
        foregroundColor: Colors.black,
        child: Icon(isFavorite(tripId) ? Icons.star : Icons.star_border),//نجمة فارغة او ممتلئة
        onPressed: () => manageFavorite(tripId),
      ),
    );
  }
}
