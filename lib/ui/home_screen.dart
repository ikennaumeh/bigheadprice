import 'package:bigheadprice/constants.dart';
import 'package:bigheadprice/ui/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
    //  drawer: buildDrawer(),
      body: Body(),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("john@doe.com"),
            accountName: Text("John Doe"),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset("lib/assets/images/bitcoin.png")),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: kTextLightColor,),
            title: Text('Home'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.account_circle, color: kTextLightColor,),
            title: Text('Account'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: kTextLightColor,),
            title: Text('Notifications'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: kTextLightColor,),
            title: Text('Settings'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.help, color:  kTextLightColor,),
            title: Text('Help'),
            onTap: (){},
          ),
        ],
      ),
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