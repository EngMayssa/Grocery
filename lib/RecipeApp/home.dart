import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/RecipeApp/popular.dart';
import 'package:grocery/RecipeApp/promo.dart';

import 'compose.dart';
import 'customButton.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true , // لجعل العنوان بالمنتصف
          title: const Text('RECIPE APP'),
          elevation:0,
          actions: [
           Container(
        padding: const EdgeInsetsDirectional.only(
          end: 5.3,
        ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ],
      ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Promo recipe",
                 style: Theme.of(context).textTheme.headline1,
                ),

                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                      Promo('soup', 'soup with mashroms' , 'assets/images/Recipe_2.png'),
                      Promo('Food', 'Food with mashroms' , 'assets/images/Food.png'),
                     ],
                  ),
                ),
                SizedBox(
                    height: 30,
                ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                                child: Column(
                                  children: [
                                      IconButton(
                                        color: Theme.of(context).cardColor,
                                        onPressed: () {},
                                        icon: FaIcon(FontAwesomeIcons.carrot),
                                      ),
                                    Text("test"),
                                  ],
                                ),
                              ),
                            ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.lunch_dining_outlined,
                                      color: Theme.of(context).cardColor,
                                    ),
                                    Text("test"),
                                  ],
                                ),
                              ),
                            ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                                child: Column(
                                  children: [
                                    Icon(
                                        Icons.local_bar_outlined,
                                      color: Theme.of(context).cardColor,
                                      ),
                                    Text("vege"),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                  Icon(
                                    Icons.restaurant_outlined,
                                    color: Theme.of(context).cardColor,
                                  ),
                                Text("vege"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                  Icon(
                                    Icons.icecream_outlined,
                                    color: Theme.of(context).cardColor,
                                  ),
                                Text("vege"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                  Icon(
                                    Icons.bakery_dining_outlined,
                                    color: Theme.of(context).cardColor,
                                  ),
                                Text("vege"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Compose(),
                Popular(),
              ],
            ),
          ),
        ),
    );
  }
}
