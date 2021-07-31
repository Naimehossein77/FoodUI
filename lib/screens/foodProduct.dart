import 'package:flutter/material.dart';
import 'package:foodui/models/RestaurantCardModel.dart';
import 'package:foodui/widgets/CustomText.dart';
import 'package:foodui/widgets/FoodItemCard.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class FoodProduct extends StatefulWidget {
  FoodProduct({Key key, this.restaurantList}) : super(key: key);

  RestaurantsCardItem restaurantList;
  @override
  _FoodProductState createState() => _FoodProductState();
}

class _FoodProductState extends State<FoodProduct>
    with TickerProviderStateMixin {
  double top;
  TabController _tabBarController;

  void initState() {
    _tabBarController = TabController(length: 6, vsync: this);
    print(widget.restaurantList.name);
    super.initState();
    print('initstate');
  }

  void dispose() {
    super.dispose();
    _tabBarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 270,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            leading: Center(
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white),
                child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 16,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            actions: [
              Center(
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white),
                  child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.share_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      onPressed: () {}),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Center(
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white),
                  child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.info_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      onPressed: () {}),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: TabBar(
                  isScrollable: true,
                  controller: _tabBarController,
                  indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.only(left: 15, right: 15),
                      borderSide: BorderSide(
                          width: 2, color: Theme.of(context).primaryColor)),
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Popular',
                    ),
                    Tab(
                      text: 'Soup',
                    ),
                    Tab(
                      text: 'FastFood',
                    ),
                    Tab(
                      text: 'Biriyani',
                    ),
                    Tab(
                      text: 'Drinks',
                    ),
                    Tab(
                      text: 'Soup',
                    )
                  ],
                ),
              ),
            ),
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              // print('constraints=' + constraints.toString());
              top = constraints.biggest.height;
              return FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                centerTitle: false,
                title: top == 80.0
                    ? CustomText(
                        text: widget.restaurantList.status ? 'Open' : 'Closed',
                        size: 15,
                      )
                    : Text(''),
                background: Container(
                  padding: EdgeInsets.zero,
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            child: Image.asset(
                              widget.restaurantList.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: const Color(0x70000000),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          //color: Colors.yellow,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomText(
                                text: widget.restaurantList.name,
                                size: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(0),
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        width: 1, color: Colors.white)),
                                child: CustomText(
                                  text:
                                      'Delivery: ${widget.restaurantList.deliveryTime}',
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  CustomText(
                                    text:
                                        '${widget.restaurantList.rating} (59)',
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 115.0 * 10.0,
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                          //physics: NeverScrollableScrollPhysics(),
                          controller: _tabBarController,
                          children: [
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                            Container(
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    primary: true,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return FoodItemCard();
                                    })),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

