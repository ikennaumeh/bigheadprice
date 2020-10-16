import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/ui/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  static const String HOME_SCREEN_VIEW_ROUTE = "home_view_route";
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),

      body: Body(),
    );
  }



  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          padding:  EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(Icons.menu, color: kTextLightColor,),
          onPressed: (){},
      ),
      title: Center(
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold, fontSize: 19.0),
           children: [
             TextSpan(text: "BigHead",
             style: TextStyle(color: kTextLightColor,),
             ),
             TextSpan(
               text: "Prices",
               style: TextStyle(color: kPrimaryColor,),
             ),
           ]
          ),
        ),
      ),
     actions: [
       IconButton(
         padding:  EdgeInsets.only(right: kDefaultPadding),
         icon: Icon(Icons.more_vert , color: kTextLightColor,),
         onPressed: (){},
       ),
     ],
    );

  }
}