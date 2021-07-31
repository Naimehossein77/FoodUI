import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/models/FoodMenuModel.dart';
import 'package:foodui/widgets/CustomText.dart';

class FoodMenu extends StatelessWidget {
  FoodMenu({Key key}) : super(key: key);
  List<FoodItem> foodItemList1 = [
    FoodItem(name: 'Pizza', image: '9.jpg'),
    FoodItem(name: 'Burger', image: '14.jpg'),
    FoodItem(name: 'Combo', image: '12.jpg'),
    FoodItem(name: 'Pizza', image: '9.jpg'),
    FoodItem(name: 'Pizza', image: '9.jpg'),
    FoodItem(name: 'Pizza', image: '9.jpg'),
    FoodItem(name: 'Pizza', image: '9.jpg'),
  ];
  List<FoodItem> foodItemList2 = [
    FoodItem(name: 'Biriyani', image: '18.jpg'),
    FoodItem(name: 'Pastry', image: '11a.jpg'),
    FoodItem(name: 'Salad', image: '10.jpg'),
    FoodItem(name: 'Fruit', image: '12.jpg'),
    FoodItem(name: 'Fruit', image: '12.jpg'),
    FoodItem(name: 'Fruit', image: '12.jpg'),
    FoodItem(name: 'Fruit', image: '12.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 105,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodItemList1.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5),
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 5,
                        //     color: Colors.grey[200],
                        //     offset: Offset(0, 0),
                        //   )
                        //]
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/${foodItemList1[index].image}',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Positioned(
                              top: 12,
                              left: 12,
                              child: CustomText(
                                text: foodItemList1[index].name,
                                size: 13,
                                color: Colors.grey[900],
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 105,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodItemList2.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5),
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 5,
                        //     color: Colors.grey[200],
                        //     offset: Offset(0, 0),
                        //   )
                        //]
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/${foodItemList2[index].image}',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Positioned(
                              top: 12,
                              left: 12,
                              child: CustomText(
                                text: foodItemList2[index].name,
                                size: 13,
                                color: Colors.grey[900],
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
