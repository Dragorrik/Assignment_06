import 'package:assignment_06/constant/app_colors.dart';
import 'package:assignment_06/constant/app_text.dart';
import 'package:assignment_06/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchedScreen extends StatefulWidget {
  const SearchedScreen({super.key});

  @override
  State<SearchedScreen> createState() => _SearchedScreenState();
}

class _SearchedScreenState extends State<SearchedScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bali_background_image.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 100),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      TabBar(
                        controller: tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        indicator: BoxDecoration(
                          color: Color(AppColors.indicatorColor),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Text("Home")),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white),
                              child: Center(child: Text("Home")),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Text("Home")),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: TabBarView(
                            controller: tabController,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  AppText.text1,
                                  style: AppTextStyle.textStyle14BlackW500,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: 190,
                                  width: 135,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image1.png"),
                                      opacity: 0.5,
                                    ),
                                  ),
                                  child: Center(child: Text("10+")),
                                ),
                              ),
                              Center(
                                child: Text("It's sunny here"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
