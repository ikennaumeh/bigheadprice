import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/models/item_model.dart';
import 'package:bigheadprice/ui/components/categories.dart';
import 'package:bigheadprice/ui/components/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

PageController _pageController = PageController(initialPage: 0);
class _BodyState extends State<Body> {
  var _currentPageIndex = 0;
  int selectedCategory = 0;
  List<String> categories = [
    "Technology",
    "Movie",
    "Fashion",
    "Ticket Prices",
    "Food",
    "Automobiles"
  ];

  Widget build(context) {
    return Column(children: [
      SearchBox(
        onChanged: (value) {},
      ),

      // CategoryList(),

      Container(
      
        height: 50,
        child: ListView.builder(
          // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = index;
              _pageController.jumpToPage(index);
             
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index],
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                      color: index == selectedCategory
                          ? kTextColor
                          : Colors.black.withOpacity(0.4),
                      fontSize: 18.0),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  height: 2.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: index == selectedCategory
                          ? kPrimaryColor
                          : Colors.transparent),
                ),
              ],
            ),
          ),
        );
              }),
      ),

      Expanded(
              child: PageView.builder(
                controller: _pageController,
                
            onPageChanged: (currentPage) {
              setState(() {
                _currentPageIndex = currentPage;
                selectedCategory = currentPage;
              });
            },
            itemCount: categories.length,
            itemBuilder: (ctx, index) {
              return Text("Container " + index.toString());
              
              // ItemCard();
            }),
      )
    ]);

    //     // ItemCard(),

    // )
  }
}
