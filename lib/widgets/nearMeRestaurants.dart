import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/models/RestaurantCardModel.dart';
import 'package:foodui/screens/foodProduct.dart';
import 'package:foodui/widgets/CustomText.dart';
import 'package:foodui/widgets/RestaurantCard.dart';

class NearMeRestaurants extends StatelessWidget {
  const NearMeRestaurants({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      color: Colors.transparent,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodProduct(
                            restaurantList: RestaurantsCardItem(
                              name: 'Kazi Farms Kitchen - saidpur',
                              description:
                                  '\$\$. Fast Food, Frozen Food, Spicy',
                              rating: '4.0',
                              status: true,
                              favorite: false,
                              reviewsCount: 810,
                              image: 'assets/r1.jpg',
                              deliveryPayment: 'Free delivery',
                              deliveryTime: '30 min',
                            ),
                          )));
            },
            child: RestaurantCard(
              name: 'Kazi Farms Kitchen - saidpur',
              description: '\$\$. Fast Food, Frozen Food, Spicy',
              rating: '4.0',
              status: true,
              favorite: false,
              reviewsCount: 810,
              image: 'assets/r1.jpg',
              deliveryPayment: 'Free delivery',
              deliveryTime: '30 min',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodProduct(
                            restaurantList: RestaurantsCardItem(
                              name: 'Kazi Farms Kitchen - saidpur',
                              description:
                                  '\$\$. Fast Food, Frozen Food, Spicy',
                              rating: '4.0',
                              status: true,
                              favorite: false,
                              reviewsCount: 810,
                              image: 'assets/r3.jpg',
                              deliveryPayment: 'Free delivery',
                              deliveryTime: '30 min',
                            ),
                          )));
            },
            child: RestaurantCard(
              name: 'Kazi Farms Kitchen - saidpur',
              description: '\$\$. Fast Food, Frozen Food, Spicy',
              rating: '4.0',
              status: true,
              favorite: false,
              reviewsCount: 810,
              image: 'assets/r3.jpg',
              deliveryPayment: 'Free delivery',
              deliveryTime: '30 min',
            ),
          ),
        ],
      ),
    );
  }
}
