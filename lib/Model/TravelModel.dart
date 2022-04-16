class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;
  

  TravelModel(
    {
      required this.name,
      required this.location,
      required this.image,
      required this.distance,
      required this.temp,
      required this.rating,
      required this.discription,
      required this.price,
    }
  );
}

List<TravelModel>travelList = [
  
  TravelModel(
      name: "رشت",
      location: "iran  - Gilan - Rasht ",
      image: "assets/images/Rasht.jpg",
      distance:"4.8",
      temp: "23",
      rating: "5",
      discription: "میدان شهرداری رشت در اوایل سلطنت رضا پهلوی (۱۳۰۴-۱۳۲۰) احداث شد و مجموعه آن شامل کاخ شهرداری، موزه پست و ساختمان قدیمی هتل ایران می‌شود. ساختمان شهرداری و برج ساعت آن، نماد شهر رشت است. این بنا هنگام وقوع زلزله مهیب و ویرانگر منجیل در سال ۱۳۶۹ آسیب دید و چندی بعد توسط روبرت واهانیان، به‌صورت سابق مرمت شد",
      price: "30,000"),

  TravelModel(
      name: "حیران",
      location: "iran  - Gilan - Astara ",
      image: "assets/images/hiran.jpg",
      distance:"474",
      temp: "12",
      rating: "4.5",
      discription: 
                " گردنه حیران از جاهای دیدنی آستارا است. این گردنه در مسیر ارتباطی میان آستارا و اردبیل واقع شده است و در تقسیم جغرافیایی جزو استان گیلان محسوب می‌شود.لازم به ذکر است که گردنه حیران آستارا به سه روستای حیران سفلی، حیران وسطی و حیران علیا تقسیم می‌شود. شاید برای شما جالب باشد که بدانید حیران در لغت به‌معنای «منطقه احاطه شده با ابر و مه» است و ریشه آن از زبان تالشی بیرون آمده است؛ گردنه حیران هم درست مانند نام خود، در بیشتر فصل‌های سال، پوشیده از ابر و مه است.",
      price: "250,000"),

  TravelModel(
      name: "ماسوله",
      location: "iran  - Gilan - Foman ",
      image: "assets/images/masoleh.jpg",
      distance:"64",
      temp: "15",
      rating: "5",
      discription: 
                "نمایی زیبا از خانه‌های پلکانی، بالکن‌های مزین به گل‌های شمعدانی، جنگل‌های بکر و سرسبز، آبشارهای خروشان و کوه‌های بلند، از آن دسته مناظری است که قطعا شما را عاشق خود خواهد کرد. آب و هوای مطبوع، مردم خون‌گرم و مهمان‌نواز، غذاهای باکیفیت و فضای رویایی روستای ماسوله گیلان، آن‌قدر جذاب است که شما را بارها و بارها به‌سمت خود خواهد کشاند.",
      price: "150,000"),

  TravelModel(
      name: "سقالکسار",
      location: "iran  - Gilan - Rasht ",
      image: "assets/images/saghalak_sar.jpg",
      distance:"15",
      temp: "22",
      rating: "4.67",
      discription: 
                "روستای سقالکسار در فاصله بسیار کوتاهی از رشت، مکانی بی‌نظیر با امکانات مناسب است. دریاچه سقالکسار، پاک‌ترین دریاچه گیلان، شاید برای شما بسیار آشنا باشد؛ بله درست حدس زدید، این دریاچه لوکیشن فیلم ماهی و گربه است. در ادامه با ما همراه باشید تا شما را به سفری به میان این دریاچه نیلگون ببریم که آیینه‌ای شفاف از زیبایی‌های اطراف است و انعکاس درختان انبوه در آن، آرامش و سکونی عجیب را به گردشگران هدیه می‌کند؛ چشم‌اندازی که نمی‌توان از آن چشم برداشت.",
      price: "50,000"),
];