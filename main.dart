import 'package:flutter/material.dart';
import '../screens/category_trip_screen.dart';
import '../screens/trip_detail_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/tabs_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app_data.dart';
import 'models/trip.dart';
import 'screens/splash_screen.dart';
import 'screens/aboutUs.dart';
import 'screens/catogries_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {//لان الفلتر اول مرة متشتغلش
    'summer': false,
    'winter': false,
    'family': false,
  };

  List<Trip> _availableTrips = Trips_data;
  List<Trip> _favoriteTrips = [];//لرحلات المفضلة ف البداية فاضية

  void _changeFilters(Map<String, bool> filterData) {//تستقبل ماب مثلا صيف:نعم
    setState(() {
      _filters = filterData;//هادي دالة selectedFilters

      _availableTrips = Trips_data.where((trip) {//هادي الدالة
        if (_filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_filters['family'] == true && trip.isForFamilies != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _manageFavorite(String tripId) {//خاصة بالضافو والحدف تستقبل id يلي رصيت عليها
    final existingIndex =//نبحث على رقم الرحلة ف المفضلة
    _favoriteTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {//يعني الرحلة موجودة
      setState(() {
        _favoriteTrips.removeAt(existingIndex);//نحدفها
      });
    } else {
      setState(() {
        _favoriteTrips.add(//نضيفها عن طرريق اول ايدي نلقاه
          Trips_data.firstWhere((trip) => trip.id == tripId),
        );
      });
    }
  }
//باش تلون المفضلة
  bool _isFovarite(String id) {//نبعتلها اي دي لاش اديرها مفضلة
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    localizationsDelegates: [
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
       GlobalCupertinoLocalizations.delegate,
     ],
      supportedLocales: [
        const Locale('ar', 'AE'),
     ],
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
            headlineSmall: TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.bold,
            ),
          )),
      initialRoute: '/splash', // نبدأ من شاشة الترحيب

      routes: {
        '/splash': (ctx) => SplashScreen(), // تعريف شاشة الـ Splash
        CategoriesScreen.ScreenRoute: (ctx) => TabsScreen(_favoriteTrips), // الصفحة الرئيسية بعد الترحيب
        CategoryTripsScreen.screenRoute: (ctx) =>
            CategoryTripsScreen(_availableTrips),//نبعتله حتى الدالة
        TripDetailScreen.screenRoute: (ctx) =>
            TripDetailScreen(_manageFavorite, _isFovarite),
        FiltersScreen.screenRoute: (ctx) =>
            FiltersScreen(_filters, _changeFilters),
        AboutUsScreen.screenRoute: (ctx) => AboutUsScreen(),
      },
    );
  }
}
