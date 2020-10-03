import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class  CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["Technology", "Movie","Fashion","Ticket Prices","Food", "Automobiles"];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index)=> buildCategory(index, context),),
    );
  }

  Widget buildCategory(int index, BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: (){
          setState(() {
             selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w600, color: index == selectedCategory ? kTextColor : Colors.black.withOpacity(0.4), fontSize: 18.0),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 2.0,
              width: 40.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: index == selectedCategory ? kPrimaryColor : Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
