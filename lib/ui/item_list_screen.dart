import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/models/item_model.dart';
import 'package:bigheadprice/ui/item_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemListScreen extends StatefulWidget {
  static const String ITEM_LIST_SCREEN_ROUTE = "items_list_view";

  final Item item;
  ItemListScreen({this.item});

  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.item.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: Image.asset(widget.item.imageUrl, fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 28.0,
                      color: Colors.black,
                      onPressed: ()=> Navigator.pop(context),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 28.0,
                          color: Colors.black,
                          onPressed: ()=> Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 22.0,
                          color: Colors.black,
                          onPressed: ()=> Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      widget.item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25.0,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.item.dealers.length,
                itemBuilder: (BuildContext context, int index){
                  Dealer dealer = widget.item.dealers[index];
                  return GestureDetector(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> ItemDetailScreen(dealers: dealer,),));
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                          height: 125.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(105.0, 20.0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 120.0,

                                      child: Text(
                                        dealer.name,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis, ),),
                                    Text("\$${dealer.price}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0, color: kPrimaryColor),),


                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(dealer.place,style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black54),),
                                    Text("per item", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black54),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left:15.0,
                          top:15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(dealer.imageUrl, width: 100, fit: BoxFit.cover,),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
