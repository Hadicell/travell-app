import 'package:flutter/material.dart';
import 'package:travel1/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Colors.red,
          width: double.infinity,
          height: size.height,
          child: Stack(
            children: [
//عکس تمام صفحه
              Container(
                width: double.infinity,
                height: size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 350,
                      child: Center(
                          child: Text('Explore Your' '  ' 'Favorite Journey',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 38.3,
                                  fontWeight: FontWeight.w900))),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 260),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 350,
                      child: Center(
                          child: Text('Let`s Make Our Lift Bettet',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18))),
                    ),
                  ],
                ),
              ),
//کاور زیر دکمه
              Positioned(
                right: 0,
                top: 450,
                left: 1,
                bottom: 28,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rec.png"),
                        fit: BoxFit.fitHeight),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Icon(
                      Icons.keyboard_double_arrow_up_sharp,
                      size: 45,
                      color: Colors.white54,
                    ),
                  ),
                ),
                
              ),



// دکمه
              Positioned(
                bottom: 35,
                right: 145,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Draggable<String>(
                        axis: Axis.vertical,
                        child: InkWell(
                          child: Container(
                            width: 120,
                            height: 75,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            // متن داخل دکمه
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(43, 23, 0, 0),
                              child: Text(
                                "Go",
                                style: TextStyle(
                                    color: Color.fromARGB(174, 0, 0, 0),
                                    fontSize: 25.8,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),

                           onTap:  (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                                return const Home();
                              }));
                            },
                        ),
                        feedback: Container(
                          width: 120,
                          height: 75,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          // متن داخل دکمه
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(43, 23, 0, 0),
                            child: Text(
                              "Go",
                              style: TextStyle(
                                  color: Color.fromARGB(174, 0, 0, 0),
                                  fontSize: 25.8,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )),
                        
                       ],
                ),
              ),
            ],
            
          ),
        )
      ],
      
    ));
  }
}

