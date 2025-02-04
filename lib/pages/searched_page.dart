import 'package:assignment_06/pages/activities_page.dart';
import 'package:assignment_06/pages/foods_page.dart';
import 'package:assignment_06/pages/hotels_page.dart';
import 'package:assignment_06/widgets/service_widget.dart';
import 'package:flutter/material.dart';

String hotelDetails =
    'Surrounded by rice fields, Villa Kayu Lama offers a peaceful retreat in Ubud. Guests can take a leisurely swim in the pri... Read More';
String foodDetails =
    "There are so many foods you must eat in Bali but this article might be too long if we list all of it. This guide includes some tra.. Read More";
String activitiesDetails =
    'Discover 81 cool things to do in Bali that you don’t want to miss! From stunning diving spots to amazing beachclubs... Read More';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List serviceDetails = [
    hotelDetails,
    foodDetails,
    activitiesDetails,
  ];

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    List pages = [
      HotelsPage(
        index: selectedIndex,
        detail: serviceDetails[selectedIndex],
      ),
      FoodsPage(
        index: selectedIndex,
        detail: serviceDetails[selectedIndex],
      ),
      ActivitiesPage(
        index: selectedIndex,
        detail: serviceDetails[selectedIndex],
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              //Fixed widget
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: mqh * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/back.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      Row(
                        children: [
                          Icon(Icons.share, color: Colors.white),
                          SizedBox(width: mqw * 0.05),
                          Icon(Icons.favorite_border_outlined,
                              color: Colors.white),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: mqh * 0.08,
                      ),
                      Text('Bali',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mqh * 0.05,
                            fontWeight: FontWeight.w800,
                          )),
                      Text('Indonesia',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mqh * 0.02,
                          )),
                      SizedBox(
                        height: mqh * 0.01,
                      ),
                      Container(
                        height: mqh * 0.05,
                        width: mqw * 0.22,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: mqh * 0.02,
                              ),
                            ),
                            SizedBox(width: mqw * 0.01),
                            Icon(
                              Icons.star,
                              size: mqh * 0.025,
                              color: const Color.fromARGB(255, 245, 221, 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Positioned(
                top: mqh * 0.4,
                left: 0,
                right: 0,
                //Stateful part
                child: Container(
                  width: double.infinity,
                  height: mqh * 0.6,
                  decoration: BoxDecoration(
                    color: Color(0XFFF2F5FA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        SizedBox(height: mqh * 0.01),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ServiceWidget().serviceNames(
                                  'Hotels',
                                  mqh * 0.06,
                                  mqw * 0.25,
                                  selectedIndex == 0
                                      ? Color(0XFFC9D4E4)
                                      : Colors.white),
                              ServiceWidget().serviceNames(
                                  'Foods',
                                  mqh * 0.06,
                                  mqw * 0.25,
                                  selectedIndex == 1
                                      ? Color(0XFFC9D4E4)
                                      : Colors.white),
                              ServiceWidget().serviceNames(
                                  'Activities',
                                  mqh * 0.06,
                                  mqw * 0.25,
                                  selectedIndex == 2
                                      ? Color(0XFFC9D4E4)
                                      : Colors.white),
                            ]),
                        SizedBox(height: mqh * 0.04),
                        pages[selectedIndex],
                        SizedBox(height: mqh * 0.07),
                        //Navigation part
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (selectedIndex == 2) {
                                selectedIndex = 0;
                                return;
                              }
                              selectedIndex = selectedIndex + 1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: mqh * 0.07,
                            width: mqw * 0.4,
                            decoration: BoxDecoration(
                              color: Color(0XFF18C0C1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Continue',
                                  style: TextStyle(
                                    fontSize: mqh * 0.09 * 0.32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
