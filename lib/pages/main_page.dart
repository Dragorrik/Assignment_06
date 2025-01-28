import 'package:assignment_06/widgets/service_widget.dart';
import 'package:flutter/material.dart';

String details =
    'Surrounded by rice fields, Villa Kayu Lama offers a peaceful retreat in Ubud. Guests can take a leisurely swim in the pri... Read More';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: mqh * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: mqh * 0.3,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: mqh * 0.7,
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
                            ServiceWidget()
                                .serviceNames('Hotels', mqh * 0.06, mqw * 0.25),
                            ServiceWidget()
                                .serviceNames('Foods', mqh * 0.06, mqw * 0.25),
                            ServiceWidget().serviceNames(
                                'Activities', mqh * 0.06, mqw * 0.25),
                          ]),
                      SizedBox(height: mqh * 0.04),
                      ServiceWidget().services(
                        mqh * 0.32,
                        mqw * 0.39,
                        'assets/images/1_1.png',
                        'assets/images/1_2.png',
                        details,
                      ),
                      SizedBox(height: mqh * 0.07),
                      Container(
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
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
