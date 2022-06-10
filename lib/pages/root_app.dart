import 'package:flutter/material.dart';
import 'package:shopapp/json/constant.dart';
import 'package:shopapp/pages/account.dart';
import 'package:shopapp/pages/cart_page.dart';
import 'package:shopapp/pages/home_page.dart';
import 'package:shopapp/pages/more_page.dart';
import 'package:shopapp/pages/store_page.dart';
import 'package:shopapp/theme/color.dart';

class RootApp extends StatefulWidget {
  const RootApp({ Key key }) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int acivetap= 0;
  AppBar appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  Widget getBody(){
    return IndexedStack(
index: acivetap,
children: [
  HomePage(),
    StorePage(),
   AccountPage(),
    CartPage(),
    MorePage(),

],
    );
  }
  Widget getAppBar(){
    switch (acivetap) {
        case 0:
          return null;
           case 1:
          return null;
           case 2:
          return AppBar(
        elevation: 0.0,
            backgroundColor: white,
            title:Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
              'ACCOUNT',
              style: TextStyle(color: black),
            ),
            ],)
            );
          break;
           case 3:
           return AppBar(
        elevation: 0.0,
            backgroundColor: white,
            title:Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
              'CART',
              style: TextStyle(color: black),
            ),
            ],)
            );
          break;
           case 4:
           return AppBar(
        elevation: 0.0,
            backgroundColor: white,
            title:Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
              'MORE',
              style: TextStyle(color: black),
            ),
            ],)
            );
          break;
        default:
      }
    return AppBar(
      
    );
  }
  Widget getFooter(){
    return Container(
      height: 80,
      decoration:BoxDecoration(
        color:white,
        border: Border(top:BorderSide(color: grey.withOpacity(0.2)))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:10, right: 10 , top:5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
        return IconButton(icon: Icon(itemsTab[index]['icon'], size: itemsTab[index]['size'], 
        color: acivetap == index ? accent : black
        )
        ,
        onPressed: (){
          setState(() {
            acivetap = index;
          });
        },); 
        })
    ),
      ));
  }
}