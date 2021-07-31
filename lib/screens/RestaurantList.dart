import 'package:flutter/material.dart';
import 'package:foodui/models/RestaurantCardModel.dart';
import 'package:foodui/screens/foodProduct.dart';
import 'package:foodui/widgets/CustomText.dart';
import 'package:foodui/widgets/FoodMenu.dart';
import 'package:foodui/widgets/RestaurantCard.dart';

class ReastaurantList extends StatefulWidget {
  ReastaurantList({Key key}) : super(key: key);

  @override
  _ReastaurantListState createState() => _ReastaurantListState();
}

class _ReastaurantListState extends State<ReastaurantList> {
  List<RestaurantsCardItem> restaurantList = [
    RestaurantsCardItem(
        name: 'Kazi Farms Kitchen - saidpur',
        description: '\$\$. Fast Food, Frozen Food, Spicy',
        image: 'assets/r1.jpg',
        rating: '4.0',
        status: true,
        reviewsCount: 810,
        favorite: false,
        deliveryTime: '30 min',
        deliveryPayment: 'Free delivery'),
    RestaurantsCardItem(
        name: 'Tandur Kitchen - saidpur',
        description: '\$\$. Fast Food, Frozen Food, Spicy',
        image: 'assets/r2.jpg',
        rating: '4.2',
        status: true,
        reviewsCount: 810,
        favorite: false,
        deliveryTime: '15 min',
        deliveryPayment: 'Free delivery'),
    RestaurantsCardItem(
        name: 'Tajir Uddin Hotel - saidpur',
        description: '\$\$. Fast Food, Frozen Food, Spicy',
        image: 'assets/r3.jpg',
        rating: '4.0',
        status: true,
        reviewsCount: 810,
        favorite: false,
        deliveryTime: '30 min',
        deliveryPayment: 'Free delivery'),
    RestaurantsCardItem(
        name: 'Al Shams Hotel - saidpur',
        description: '\$\$. Fast Food, Frozen Food, Spicy',
        image: 'assets/r4.jpg',
        rating: '4.0',
        status: true,
        reviewsCount: 810,
        favorite: false,
        deliveryTime: '30 min',
        deliveryPayment: 'Free delivery'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: CustomText(
                    text: 'All Restaurants',
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: restaurantList.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            FoodProduct(
                                                restaurantList:
                                                    restaurantList[index])));
                              },
                              child: RestaurantCard(
                                name: restaurantList[index].name,
                                description: restaurantList[index].description,
                                rating: restaurantList[index].rating,
                                status: restaurantList[index].status,
                                favorite: restaurantList[index].favorite,
                                reviewsCount:
                                    restaurantList[index].reviewsCount,
                                image: restaurantList[index].image,
                                deliveryPayment:
                                    restaurantList[index].deliveryPayment,
                                deliveryTime:
                                    restaurantList[index].deliveryTime,
                              ),
                            ),
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
