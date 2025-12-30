import 'models/category.dart';
import './models/trip.dart';

const categories_data= const [//list ,const تتعدل من اهني بس
   Category( //كل عنصر هو object
     id: 'c1',
     title: 'جبال وطبيعة خضراء',
     imageUrl:
     'https://i.pinimg.com/736x/5f/95/e8/5f95e8efedb8ccf53c11f94f75c7d3e9.jpg',
   ),
  Category(
    id: 'c2',
    title: 'بحيرات ومسطحات مائية',
    imageUrl:
    'https://i.pinimg.com/736x/27/29/e7/2729e7b2bc389db0f684e2a822ae31f3.jpg',
  ),

   Category(
    id: 'c3',
    title: 'شواطئ وبحر',
    imageUrl:
    'https://i.pinimg.com/736x/21/4a/8c/214a8c30e416f299f18ade37a728b7c1.jpg',
  ),
  Category(
    id: 'c4',
    title: 'صحاري وواحات',
    imageUrl:
    'https://i.pinimg.com/736x/26/18/62/2618626ed6a1dc5d15f9b4729d3ca9d9.jpg',
  ),
  Category(
    id: 'c5',
    title: 'مدن تاريخية وآثار',
    imageUrl:
    'https://i.pinimg.com/1200x/b1/a7/c0/b1a7c0c8d9b6cb478a024220dc9dabce.jpg',
  ),
  Category(
    id: 'c6',
    title: 'تراث وثقافة',
    imageUrl:
    'https://i.pinimg.com/1200x/10/1b/f2/101bf2e66652c7bbe98db744564bbcfc.jpg',
  ),
  Category(
    id: 'c7',
    title: 'الاكل الليبي',
    imageUrl:
    'https://i.pinimg.com/736x/b3/05/3f/b3053f1ac0694898498a30f91c5c099c.jpg',
  ),

  Category(
    id: 'c8',
    title: 'الاسواق الشعبية',
    imageUrl:
    'https://i.pinimg.com/736x/16/03/e3/1603e3bd425e563cfd4d47b6c27a9a9c.jpg',
  ),


];
const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'جبال نفوسة',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/58/cf/17/58cf17e1ed53cfa729b03b30d99fe9ef.jpg',
    duration: 20,
    activities: [
      'رحلات مشي جبلية (Hiking)',
      'تصوير طبيعة ومناظر خضراء',
      'زيارة القرى التقليدية والتعرف على الثقافة المحلية',
      'التخييم الليلي وسط الطبيعة ',
      'مراقبة الطيور والحياة البرية'
    ],
    program: [
      'رحلة مشي جبلية لمدة ساعتين وسط الطبيعة',
      'تصوير المناظر الطبيعية والوديان',
      'زيارة القرى التقليدية وتعلم العادات المحلية',
      'تخييم ليلي مع الأصدقاء',
      'مراقبة الطيور والحياة البرية',
      'رحلة تعليمية للتعرف على النباتات المحلية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'جبال اكاكوس',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/62/59/78/62597800715c4f438b2b904210439dc7.jpg',
    duration: 10,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع بالمناظر الجميلة'
    ],
    program: [
      'رحلة مشي جبلية لمدة ساعتين وسط الطبيعة',
      'تصوير المناظر الطبيعية والوديان',
      'التخييم الليلي وسط الجبال',
      'مراقبة الطيور والحيوانات البرية',
      'زيارة المواقع الطبيعية والينابيع'
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'جبال تيبستي',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
    'https://febp.ly/wp-content/uploads/2023/07/%D8%AA%D8%A8%D9%8A%D8%B3%D8%AA%D9%8A.jpg',
    duration: 45,
    activities: [
      'رحلة مشي جبلية وسط الطبيعة',
      'تصوير المناظر الخلابة والوديان',
      'تخييم ليلي تحت النجوم',
      'مراقبة الطيور والحيوانات البرية',
      'زيارة الينابيع والمناطق الطبيعية'
    ],
    program: [
      'رحلة مشي طويلة + تصوير الطبيعة',
      'زيارة المواقع الطبيعية والتعرف على النباتات المحلية',
      'تخييم ليلي وسط الجبال + نشاطات مراقبة الطيور'
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',

    ],
    title: 'بحيرة غدامس',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
    'https://i.pinimg.com/1200x/fa/9f/25/fa9f254a8d6ebb98e7cb49e3e17ab176.jpg',
    duration: 60,
    activities: [
      'جولة بالقارب في البحيرة',
      'تصوير المناظر المائية والطبيعة المحيطة',
      'التخييم بجانب البحيرة'
    ],
    program: [
      'برنامج يوم واحد: جولة بالقارب + تصوير المناظر + نزهة على ضفاف البحيرة',
      'برنامج يومين: اليوم الأول: جولة بالقارب + تصوير، اليوم الثاني: تخييم بجانب البحيرة',
      'برنامج مغامرة كاملة: جولة بالقارب + تصوير + تخييم + نشاطات مراقبة الطيور'
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',

    ],
    title: 'وادي الشاطئ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/1200x/9f/a1/ab/9fa1abc83730e535a9af41a78d570b92.jpg',
    duration: 15,
    activities: [
      'التنزه على ضفاف البحيرة',
      'تصوير الطبيعة والمياه',
      'نزهة عائلية أو تناول وجبة الغداء بجانب البحيرة'
    ],
    program: [
      'برنامج يوم واحد: نزهة + تصوير المناظر + تناول وجبة الغداء',
      'برنامج يومين: اليوم الأول: التنزه + تصوير، اليوم الثاني: نشاطات ترفيهية عائلية',
      'برنامج مغامرة كاملة: التنزه + تصوير + نزهة عائلية + نشاطات مراقبة الطيور'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'بحيرة قورين',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
    'https://i.pinimg.com/736x/4b/e6/07/4be6071b8fcdd30f2902d16169fa9000.jpg',
    duration: 240,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: ' شاطئ رأس هلال ',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/1200x/bd/c9/83/bdc9833922e8daabe47f0b1f1ca71441.jpg',
    duration: 20,
    activities: [
      'سباحة والاسترخاء على الشاطئ',
      'تصوير الغروب والمناظر البحرية',
      'رحلة قصيرة بالقارب أو الكاياك'
    ],
    program: [
      'برنامج يوم واحد: سباحة + تصوير الغروب + نزهة على الشاطئ',
      'برنامج يومين: اليوم الأول: سباحة + تصوير، اليوم الثاني: رحلة بالقارب + نزهة عائلية',
      'برنامج مغامرة كاملة: سباحة + تصوير + رحلة بالقارب + نشاطات مراقبة الطيور البحرية'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'الشاطىء الزهراء',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl:
    'https://i.pinimg.com/736x/3b/46/ae/3b46ae8e37132226c247365beaff32d4.jpg',
    duration: 35,
    activities: [
      'رياضات مائية مثل ركوب الجت سكي أو الكاياك',
      'تصوير المناظر البحرية والطبيعة المحيطة',
      'نزهة عائلية على الشاطئ'
    ],
    program: [
      'برنامج يوم واحد: رياضات مائية + تصوير + نزهة على الشاطئ',
      'برنامج يومين: اليوم الأول: ركوب الجت سكي + تصوير، اليوم الثاني: نزهة عائلية + نشاطات شاطئية',
      'برنامج مغامرة كاملة: رياضات مائية + تصوير + نزهة + نشاطات مراقبة الطيور البحرية'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'شاطىء البيضاء',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
    'https://i.pinimg.com/736x/33/00/a4/3300a40cc0266f1ec1051e5e299a0853.jpg',
    duration: 45,
    activities: [
      'سباحة والاسترخاء على الشاطئ',
      'تصوير المناظر البحرية والغروب',
      'نزهة قصيرة على الرمال أو تناول وجبة الغداء'
    ],
    program: [
      'برنامج يوم واحد: سباحة + تصوير + نزهة على الشاطئ',
      'برنامج يومين: اليوم الأول: سباحة + تصوير، اليوم الثاني: نزهة قصيرة + تناول وجبة الغداء',
      'برنامج مغامرة كاملة: سباحة + تصوير + نزهة + نشاطات مراقبة الطيور البحرية'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'الصحراء الكبرى',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'برنامج يوم واحد: جولة سفاري قصيرة + ركوب الجمال + تصوير المناظر الصحراوية',
      'برنامج يومين: اليوم الأول: رحلة سفاري + تصوير، اليوم الثاني: التخييم الليلي + مراقبة النجوم',
      'برنامج مغامرة كاملة: جولة سفاري طويلة + ركوب الجمال + تصوير + تخييم + نشاطات مراقبة الطبيعة'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',

    ],
    title: 'الصحراء الغربية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'برنامج يوم واحد: زيارة الواحات + تصوير المناظر + نزهة قصيرة بين الكثبان',
      'برنامج يومين: اليوم الأول: رحلة مشي + تصوير، اليوم الثاني: جولة قصيرة على الكثبان + استراحة في الواحات',
      'برنامج مغامرة كاملة: رحلة يوم كامل بين الكثبان + تصوير + زيارة الواحات + نشاطات مراقبة الطبيعة'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'الصحراء الرملية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'برنامج يوم واحد: ركوب سيارات الدفع الرباعي + التزلج على الرمال + تصوير',
      'برنامج يومين: اليوم الأول: رحلة سيارات + تصوير، اليوم الثاني: تخييم + مراقبة النجوم',
      'برنامج مغامرة كاملة: رحلة كاملة بين الكثبان + ركوب سيارات + تزلج على الرمال + تخييم + نشاطات مراقبة الطبيعة'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'المدينة لبدة الكبرى',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/1200x/0c/20/3c/0c203c2785e61e451a610ea04b59d541.jpg',
    duration: 30,
    activities: [
      'جولة مشي بين الآثار الرومانية',
      'تصوير المعالم الأثرية والمسرح الروماني',
      'التعرف على التاريخ والثقافة الرومانية'
    ],
    program: [
      'برنامج يوم واحد: جولة مشي + تصوير الآثار + شرح تاريخي',
      'برنامج يومين: اليوم الأول: جولة مشي + تصوير، اليوم الثاني: زيارة المعابد والمواقع المجاورة + استراحة',
      'برنامج مغامرة كاملة: جولة يوم كامل بين الآثار + تصوير + شرح تاريخي + زيارة المتاحف القريبة'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'مدينة صبراته',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/04/98/00/04980099af3c328c7989aa7422aa5f98.jpg',
    duration: 30,
    activities: [
      'زيارة المسرح الروماني',
      'جولة مشي بين الأعمدة والمعابد',
      'تصوير المعالم الأثرية على الساحل'
    ],
    program: [
      'برنامج يوم واحد: زيارة المسرح + جولة بين الأعمدة + تصوير المناظر',
      'برنامج يومين: اليوم الأول: الجولة الأثرية + تصوير، اليوم الثاني: استكشاف المناطق المجاورة + نزهة على الساحل',
      'برنامج مغامرة كاملة: جولة كاملة بين المعالم + تصوير + زيارة المتاحف + شرح تاريخي'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'المدينة القديمة طرابلس',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/b0/2b/15/b02b1561b0ce25fd3fdccbfc7608d648.jpg',
    duration: 30,
    activities: [
      'جولة مشي في الأزقة والأسواق التقليدية',
      'زيارة المساجد والمعالم الأثرية القديمة',
      'تصوير المباني والمعمار التقليدي'
    ],
    program: [
      'برنامج يوم واحد: جولة مشي في الأزقة + زيارة المعالم التاريخية + تصوير المباني',
      'برنامج يومين: اليوم الأول: استكشاف الأسواق + تصوير، اليوم الثاني: زيارة المساجد والمعالم + نزهة ثقافية',
      'برنامج مغامرة كاملة: جولة يوم كامل بين الأزقة والأسواق + تصوير + زيارة المعالم + نشاطات ثقافية وتاريخية'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'المتحف الوطني الليبي',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/0a/0d/73/0a0d732bb73037ca66e100c8a91e3324.jpg',
    duration: 30,
    activities: [
      'جولة في قاعات المتحف المختلفة',
      'التعرف على التاريخ الليبي من العصور القديمة حتى العصر الحديث',
      'تصوير المعروضات والتحف التاريخية',
      'تصوير المعروضات والتحف التاريخية'

    ],
    program: [
      'برنامج يوم واحد: جولة في القاعات الرئيسية + تصوير المعروضات + شرح تاريخي مختصر',
      'برنامج يومين: اليوم الأول: زيارة المعروضات القديمة + تصوير، اليوم الثاني: التعرف على القطع الحديثة + نشاطات تعليمية',
      'برنامج كامل: جولة يوم كامل في المتحف + تصوير + حضور عروض تعليمية + نشاطات ثقافية حول التراث الليبي'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',

    ],
    title: 'مدينة غدامس القديمة',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/f4/60/f3/f460f3e14ae1db99cfda54df5c285964.jpg',
    duration: 30,
    activities: [
      'جولة في الأزقة والمباني التقليدية',
      'التعرف على العادات والتقاليد المحلية',
      'تصوير المنازل والأسواق التقليدية'
    ],
    program: [
      'برنامج يوم واحد: جولة في الأزقة + تصوير + التعرف على التقاليد',
      'برنامج يومين: اليوم الأول: زيارة المنازل التقليدية + تصوير، اليوم الثاني: حضور فعاليات محلية + نزهة في المدينة',
      'برنامج كامل: جولة يوم كامل + تصوير + التعرف على العادات + نشاطات ثقافية'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm18',
    categories: [
      'c6', // تراث وثقافة
    ],
    title: 'المدينة القديمة طرابلس',
    tripType: TripType.Exploration,
    season: Season.Spring,
    imageUrl:
    'https://i.pinimg.com/736x/19/66/bf/1966bf97052e58161a3f5550318b4f6a.jpg',
    duration: 10,
    activities: [
      'جولة في الأزقة التاريخية',
      'زيارة الأسواق الشعبية التقليدية',
      'التعرف على العمارة الإسلامية والعثمانية',
      'تصوير المعالم الأثرية',
      'تجربة الأكلات الشعبية الليبية'
    ],
    program: [
      'جولة صباحية داخل المدينة القديمة',
      'زيارة جامع أحمد باشا القرمانلي',
      'التجول في سوق الترك وسوق المشير',
      'استراحة لتجربة الشاي والحلويات الشعبية',
      'التقاط صور للمعالم التاريخية',
      'جلسة تعريف بتاريخ طرابلس القديم'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm19',
    categories: [
      'c7',
    ],
    title: 'العصبان والمأكولات الموسمية',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/1200x/8d/36/94/8d36945ae6e5daa45a57f71d766b2118.jpg',
    duration: 1,
    activities: [
      'تجربة طبق العصبان الليبي',
      'التعرف على الأكلات الموسمية',
      'زيارة بيوت ليبية تقليدية',
      'جلسة أكل عائلية',
      'التعرف على العادات المرتبطة بالأكل'
    ],
    program: [
      'زيارة بيت ليبي تقليدي',
      'شرح مكونات العصبان وطريقة تحضيره',
      'تذوق العصبان الطازج',
      'جلسة حديث عن العادات الغذائية الليبية',
      'شرب الشاي الأخضر الليبي',
      'تجربة الحلويات التقليدية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm20',
    categories: [
      'c7',
    ],
    title: 'المبكبكة والمكرونة الليبية',
    tripType: TripType.Cultural,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/7a/d4/61/7ad461a3e41947eb0d77f437c2faa715.jpg',
    duration: 1,
    activities: [
      'تجربة المبكبكة باللحم أو الدجاج',
      'التعرف على سر النكهة الليبية',
      'زيارة مطبخ تقليدي',
      'تصوير الأطباق الشعبية',
      'جلسة أكل جماعية'
    ],
    program: [
      'زيارة مطبخ شعبي ليبي',
      'تحضير المبكبكة أمام الزوار',
      'تذوق المكرونة الليبية الحارة',
      'شرح البهارات المستخدمة',
      'جلسة تصوير للأطباق',
      'تجربة الأكل في أجواء عائلية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm21',
    categories: [
      'c7',
    ],
    title: 'البازين ',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://i.pinimg.com/736x/be/8e/e2/be8ee29bed0fd36d275ea93a7c45d301.jpg',
    duration: 1,
    activities: [
      'تجربة طبق البازين مع اللحم والخضار',
      'زيارة مطبخ شعبي ليبي',
      'التعرف على طريقة التحضير التقليدية',
      'تصوير الطبق التقليدي',
      'جلسة أكل جماعية مع العائلة'
    ],
    program: [
      'تحضير البازين مع الشيف المحلي',
      'تذوق الطبق مع المرق الأحمر',
      'شرح المكونات والبهارات',
      'جلسة تصوير الأطباق التقليدية',
      'تجربة الأكل بالطريقة الليبية الأصلية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm22',
    categories: ['c8'], // الأسواق الشعبية
    title: 'سوق المشير – طرابلس',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'https://i.pinimg.com/736x/5e/9b/c1/5e9bc1de5a37e861c68a5542e04b8bf7.jpg',
    duration: 1,
    activities: [
      'التجول بين المحلات التقليدية',
      'شراء الهدايا والتذكارات',
      'تذوق الأكلات الشعبية الخفيفة',
      'تصوير أجواء السوق الملونة',
      'التعرف على الحرفيين المحليين'
    ],
    program: [
      'جولة صباحية في السوق',
      'زيارة محلات الحرف اليدوية',
      'تذوق الحلويات الشعبية والشاي الليبي',
      'جلسة تصوير للأكشاك التقليدية',
      'شراء تذكارات ليبية تقليدية'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm23',
    categories: ['c8'],
    title: 'سوق غدامس القديمة',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'https://i.pinimg.com/1200x/c4/84/f7/c484f79787c0e4bcf2285e7915bce0de.jpg',
    duration: 5,
    activities: [
      'استكشاف الأزقة الضيقة التقليدية',
      'شراء المنسوجات والهدايا',
      'التعرف على تاريخ السوق العريق',
      'تصوير الأسواق والمحلات',
      'تجربة الأطعمة الشعبية المحلية'
    ],
    program: [
      'جولة في الأزقة التاريخية',
      'زيارة محلات النسيج والهدايا التقليدية',
      'جلسة شاي وحلويات شعبية',
      'التقاط صور للأماكن القديمة',
      'التعرف على الحرفيين وأسلوب عملهم'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm24',
    categories: ['c8'],
    title: 'سوق الترك – طرابلس',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'https://i.pinimg.com/736x/d6/01/e4/d601e4c9eeebcdbb2fd9d196f5f97b65.jpg',
    duration: 1,
    activities: [
      'استكشاف الأزقة الضيقة التقليدية',
      'شراء المنسوجات والهدايا',
      'التعرف على تاريخ السوق العريق',
      'تصوير الأسواق والمحلات',
      'تجربة الأطعمة الشعبية المحلية'
    ],
    program: [
      'جولة في الأزقة التاريخية',
      'زيارة محلات النسيج والهدايا التقليدية',
      'جلسة شاي وحلويات شعبية',
      'التقاط صور للأماكن القديمة',
      'التعرف على الحرفيين وأسلوب عملهم'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),



];


