import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/models/item_model.dart';
import 'package:bigheadprice/ui/components/categories.dart';
import 'package:bigheadprice/ui/components/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'item_card.dart';



class Body extends StatelessWidget{
  Widget build(context){
    return Column(
      children: [
        SearchBox(onChanged: (value){},),
        CategoryList(),
        ItemCard(),

      ],
    );
  }
}

