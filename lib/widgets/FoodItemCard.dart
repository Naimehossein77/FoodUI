import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/widgets/CustomText.dart';

class FoodItemCard extends StatefulWidget {
  FoodItemCard({Key key}) : super(key: key);

  @override
  _FoodItemCardState createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/f1.jpg',
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                height: 100,
                //color: Colors.white,
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Hamburger Lover',
                      size: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: '1pc of Fresh burger with mayonnaise',
                      size: 13,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 16,
                          color: Colors.grey,
                        ),
                        CustomText(
                          text: '999+ | ',
                          size: 10,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                        CustomText(
                          text: '120',
                          color: Colors.grey,
                          size: 10,
                        )
                      ],
                    ),
                    CustomText(
                      text: 'TK 60',
                      size: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
        )
      ],
    ));
  }
}
