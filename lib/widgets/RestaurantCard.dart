import 'package:flutter/material.dart';
import 'package:foodui/widgets/CustomText.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
    @required this.name,
    @required this.description,
    @required this.image,
    @required this.rating,
    @required this.status,
    @required this.reviewsCount,
    @required this.favorite,
    @required this.deliveryTime,
    @required this.deliveryPayment,
  }) : super(key: key);

  final String name, image, deliveryTime;
  final bool status, favorite;
  final String description;
  final String rating;
  final int reviewsCount;
  final String deliveryPayment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 0),
      child: Container(
        height: 262,
        color: Colors.transparent,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 25,
                      width: 25,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.favorite_outline,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                    )),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 23,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: CustomText(
                        text: deliveryTime,
                        size: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
            Container(
              height: 80,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: name,
                        size: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.blue,
                          ),
                          CustomText(
                            text: rating,
                            size: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: '($reviewsCount)',
                            color: Colors.grey[700],
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  CustomText(
                    text: '\$\$. $description',
                    color: Colors.grey[700],
                    size: 12,
                  ),
                  CustomText(
                    text: deliveryPayment,
                    color: Colors.blueGrey[900],
                    size: 12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
