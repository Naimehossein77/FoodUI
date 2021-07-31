import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/screens/RestaurantList.dart';
import 'package:foodui/widgets/CustomText.dart';
import 'package:foodui/widgets/FoodMenu.dart';
import 'package:foodui/widgets/nearMeRestaurants.dart';
import 'package:foodui/widgets/roundedTextfield.dart';
import 'package:foodui/widgets/scrollHome1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey[300],
                      offset: Offset(0, 1))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 0,
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              color: Colors.grey[500])
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[100]),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[100]),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: HexColor('#ffffff'),
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Icon(
                              Icons.search_outlined,
                              color: Theme.of(context).primaryColor,
                              size: 25,
                            ),
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 0),
                          contentPadding: new EdgeInsets.symmetric(vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Search',
                          labelStyle: TextStyle(fontSize: 13),
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Colors.grey[400],
                                offset: Offset(0, 0))
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.filter,
                            size: 14,
                          ),
                          onPressed: () {},
                        ),
                      )),
                  SizedBox(
                    width: 0,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                CustomText(
                  text: '9 West 46th Street, New York City',
                  size: 13,
                )
              ],
            ),
          ),
          scrollHome1(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10, top: 5),
            child: CustomText(
              text: 'Food Menu',
              size: 18,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10),
            child: FoodMenu(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Nearby Reataurants',
                  size: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReastaurantList()));
                  },
                  child: CustomText(
                    text: 'See All',
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: NearMeRestaurants(),
          ),
        ],
      ),
    );
  }
}
