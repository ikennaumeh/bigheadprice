import 'package:bigheadprice/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, ),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: kDefaultPadding - 15,

          ),
          itemBuilder: (context, int index){
            Item item = items[index];
            return Container(
              margin:  EdgeInsets.all(10.0),
              width: 250.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    right: 1.0,
                    left: 1.0,
                    bottom: 20.0,
                    child: Container(

                      height: 80.0,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Text("${item.dealers.length} dealers",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black54),),
                            Text("${item.title}",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.black),),
                            Text("\$ ${item.price}", style: TextStyle(color: Colors.black,),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ]
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            item.imageUrl,
                            height: 190.0,
                            width: 160.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.locationArrow,size: 10.0, color: Colors.white,),
                                  SizedBox(width: 5.0,),
                                  Text(
                                    item.place,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}



