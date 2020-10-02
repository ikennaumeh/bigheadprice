import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  SearchBox({this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.all(kDefaultPadding - 8),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Colors.black54.withOpacity(0.32),),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Colors.black26,),
          hintText: "Search Here",
          hintStyle: TextStyle(color: Colors.black26),
        ),
      ),
    );
  }
}
