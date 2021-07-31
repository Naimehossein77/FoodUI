import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/models/category.dart';
import 'package:foodui/widgets/CustomText.dart';

class scrollHome1 extends StatelessWidget {
  scrollHome1({Key key}) : super(key: key);

  List<Category> categoryList = [
    Category(name: 'Drinks', image: '15b.jpg'),
    Category(name: 'Fast Food', image: '12.jpg'),
    Category(name: 'Desarts', image: '16.jpg'),
    Category(name: 'Biriyani', image: '19.jpg'),
    Category(name: 'Fried Rice', image: '17.jpg'),
    Category(name: 'Cake', image: '20.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            height: 115,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, left: 5),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Colors.grey[200],
                                offset: Offset(4, 4),
                              )
                            ],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/${categoryList[index].image}',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          text: categoryList[index].name,
                          size: 13,
                          color: Colors.grey[700],
                        )
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
