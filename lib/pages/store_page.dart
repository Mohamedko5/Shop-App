import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopapp/json/constant.dart';
import 'package:shopapp/theme/color.dart';

class StorePage extends StatefulWidget {
  const StorePage({ Key key }) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  getBody(){
    return SafeArea(child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30 , left: 20 , right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Text("Phnom Penh" , style: TextStyle(
                fontSize: 16,
              ),),
              SizedBox( width: 10,),
              Icon(FontAwesomeIcons.mapMarkerAlt)
            ]
          ),
        ),
      SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.only(left :20 , right: 20 ),
        child: Text("Find all \nSotres here", 
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
        ),
      ),
      SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.only(left: 20 , right: 20),
        child: Row(
          children: [
            Flexible(child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  cursorColor: primary,
                  decoration: InputDecoration(border: InputBorder.none,
                  suffixIcon: Icon(Feather.search , size: 20,
                  ) ,
                  hintText: "Search"
                ),
                
            ),
              ))),
              SizedBox(height: 20,),
              Container(
height: 45,
width: 45,
decoration: BoxDecoration(
  color: black,
  shape: BoxShape.circle,
),
child: Center(
  child: Icon(FontAwesomeIcons.mapMarkerAlt , color: white, size: 20,),
),
              )
          ],
        ),
      ),
       SizedBox(height: 40,),
       Divider(
         color: grey.withOpacity(0.8),
       ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Text("All Soters", 
            style: TextStyle(
              fontSize: 20,
              color: black,
            ),
            ),
          ) , 
          SizedBox(
            height: 20,
          ),
Column(
  children: List.generate(storeList.length, (index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20 ,right: 20 ,bottom: 20),
      child: Container(
height: 200,
width: double.infinity,
child: Stack(
  children: [
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(storeList[index]['img']) , fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: black.withOpacity(0.35),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 65,
                  height: 25,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: storeList[index]['open'] == 0 ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("CLOSE" , 
                      style: TextStyle(
                        fontSize: 10,
                        color: black,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.circle
                        ),
                      )
                    ],
                  ):Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Open" , 
                      style: TextStyle(
                        fontSize: 13,
                        color: black,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.mapMarkerAlt , size: 20, color: white,),
                  SizedBox( width: 10,),
                  Text(storeList[index]['name'] , 
                  style: TextStyle(
fontSize: 15 , color: white
                  ),
                  )
                ],
              ),
            )
          ],
        ),
      ) ,
  ],
),
      ),
    );
  })
)
      ],
    ));
  }
}