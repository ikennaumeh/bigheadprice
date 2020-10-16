import 'package:bigheadprice/models/item_model.dart';
import 'package:bigheadprice/ui/item_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../item_list_screen.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.82,
        crossAxisSpacing: 2,

      ),
      itemBuilder: (context, int index){
        Item item = items[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ItemListScreen(item: item,),),);
          },
          child: Container(
            margin:  EdgeInsets.all(10.0),
           // color: Colors.red,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  right: 1.0,
                  left: 1.0,
                  bottom: 3.0,
                  child: Container(

                    height: 80.0,
                    width: 250,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
             //         color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text("${item.dealers.length} dealers",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black54),),
                          Text("${item.available}",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.black),),

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
                          blurRadius: 7.0,
                        ),
                      ]
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Hero(
                          tag: item.imageUrl,
                          child: Image.asset(
                            item.imageUrl,
                            height: 150.0,
                            width: 140.0,
                            fit: BoxFit.cover,
                          ),
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
                                  item.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
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
          ),
        );
      },
    );
  }
}



