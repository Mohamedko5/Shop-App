import 'package:flutter/material.dart';
import 'package:shopapp/json/constant.dart';
import 'package:shopapp/theme/color.dart';

class MorePage extends StatefulWidget {
  const MorePage({ Key key }) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  getBody(){
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25 , left: 25 , right: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: 
                  NetworkImage(profileUrl)  , fit: BoxFit.cover,
                ),
              ),),
              SizedBox(width: 20,),
            Column(
              children: [
                  Text("Daniel" , style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),),
               SizedBox(height: 5,),
              Text("4 Orders" , style: TextStyle(
                color: grey,
                 fontSize: 15,
              ),)
              ],
            )
            ],
          ),
        ),
SizedBox(height:15),
Divider(
  color: grey.withOpacity(.8),
),
SizedBox(height:30),
Padding(
  padding: const EdgeInsets.only(left: 25 , right: 25),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(menusMore.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Text(menusMore[index],
        style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500
        ),
        ),
      );
    }
  )),
),
Padding(
  padding: const EdgeInsets.only(left: 25 , right: 25),
  child:   Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: (size.width - 100) / 2,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: black
        ),
        child: Center(
          child: Text("Settings" , 
          style: TextStyle(
            fontSize: 16,
            color: white,
          ),
          ),
        ),
      ),
        Container(
        width: (size.width - 100) / 2,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: black
        ),
        child: Center(
          child: Text("Sign Out" , 
          style: TextStyle(
            fontSize: 16,
            color: white,
          ),
          ),
        ),
      ),
    ],
  ),
)
      ],
    );
  }
}