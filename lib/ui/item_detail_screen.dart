import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/models/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemDetailScreen extends StatelessWidget {
   final Dealer dealers;
  ItemDetailScreen({this.dealers});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(dealers.imageUrl, fit: BoxFit.cover,)),
                height: size.height / 1.6,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 1.0),
                        blurRadius: 20.0,
                        color: kSecondaryColor,
                      ),
                    ]
                ),


              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 28.0,
                  color: Colors.black,
                  onPressed: ()=> Navigator.pop(context),
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding,),
          NameAndPrice(dealers: dealers),
          SizedBox(height: kDefaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: (){

                  },
                  child: Text(
                    "Buy Now",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 16,
                   ),
                  ),
                ),
              ),
              SizedBox(
                width: kDefaultPadding + 7,
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){

                  },
                  child: Row(
                    children: [
                      Text('Save', style: TextStyle(fontSize: 16),),
                      SizedBox(width: 5.0,),
                      Icon(FontAwesomeIcons.clock,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({ @required this.dealers});
  final Dealer dealers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: dealers.name + "\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kTextColor, fontWeight: FontWeight.bold
                  ),
                ),
             TextSpan(
               text: dealers.place,
               style: TextStyle(
                 fontSize: 20.0,
                 color: kPrimaryColor,
                 fontWeight: FontWeight.w300,
               ),
             ),
              ]
            ),
          ),
          Spacer(),
          Text(
           "\$"+ dealers.price.toString(),
            style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

