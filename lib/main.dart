import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel1/Model/TravelModel.dart';
import 'package:travel1/Travelpage1.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
            fontFamily: 'BHOMA',
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w500),
        headline2: TextStyle(
            fontFamily: 'BKOODKBD',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w700),
        bodyText1: TextStyle(
            fontFamily: 'dana', fontSize: 14, fontWeight: FontWeight.w300),
      )),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
// تعریف متغییر تراول لیست index
  int _selectedindex = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: double.infinity,
              height: size.height / 1.8,
              child: Stack(
                children: [
                  // عکس بزرگ index  0 => Rasht
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        image: DecorationImage(
                          image: AssetImage(travelList[_selectedindex].image),
                          fit: BoxFit.cover,
                        )),
                  ),

                  // head icons
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // آیکن فلش بک
                          InkWell(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(147, 255, 255, 255)),
                              child: const Icon(CupertinoIcons.left_chevron),
                            ),
                             onTap: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                                return const MyHomePage();
                              }));
                            },
                          ),

                          // آیکن قلب
                          
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(147, 255, 255, 255)),
                            child: const Icon(CupertinoIcons.heart),
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    right: 0,
                    top: 80,
                    child: SizedBox(
                      width: 90,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageItem(index);
                        },
                      ),
                    ),
                  ),

                  //name & place
                  Positioned(
                    bottom: 80,
                    left: size.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedindex].name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[_selectedindex].location,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            // بخش پایین اپ
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: const Color.fromARGB(217, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(60, 0, 0, 0),
                              width: 1,
                            )),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("فاصله",
                                  style: Theme.of(context).textTheme.headline2),
                              Text(
                                  getFarsiNumber(
                                      travelList[_selectedindex].distance +
                                          " km ".toString()),
                                  style: TextStyle(
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(217, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(60, 0, 0, 0),
                              width: 1,
                            )),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("دما",
                                  style: Theme.of(context).textTheme.headline2),
                              Text(
                                  getFarsiNumber(
                                      travelList[_selectedindex].temp +
                                          " °C ".toString()),
                                  style: TextStyle(
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(217, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(60, 0, 0, 0),
                              width: 1,
                            )),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("رتبه بندی",
                                  style: Theme.of(context).textTheme.headline2),
                              Text(
                                  getFarsiNumber(travelList[_selectedindex]
                                      .rating
                                      .toString()),
                                  style: TextStyle(
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  // متن توضیحات
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("توضیحات",
                            style: Theme.of(context).textTheme.headline1),
                        const SizedBox(
                          height: 8,
                        ),
                        ExpandableText(
                          travelList[_selectedindex].discription,
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          expandText: "Read More",
                          collapseText: "collapse",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // بخش نمایش قیمت
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Total Price"),
                                Text(
                                  getFarsiNumber(
                                  "Rial " + travelList[_selectedindex].price.toString(),),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ],
                            ),
                             Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            child: const Icon(CupertinoIcons.right_chevron,
                            color: Colors.white,
                            ),
                          )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = index;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: _selectedindex == index
                            ? const Color.fromARGB(254, 0, 251, 255)
                            : Colors.white,
                        width: 3),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(travelList[index].image))),

                // order ? order1 : order2
                width: _selectedindex == index ? imageSize + 15 : imageSize,
                height: _selectedindex == index ? imageSize + 15 : imageSize,
                duration: const Duration(milliseconds: 500),
              )),
        ),
      ],
    );
  }
}

String getFarsiNumber(String number) {
  const en = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const fa = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  en.forEach((element) {
    number = number.replaceAll(element, fa[en.indexOf(element)]);
  });
  return number;
}
