import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopapp/json/constant.dart';
import 'package:shopapp/theme/color.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  getBody(){
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:20 , right: 20 , top:20),
          child: Row(
            children: [
              Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(profileUrl) , fit: BoxFit.cover)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Daniel" , style: 
              TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              )
              ,),
              Text("Member since 2019" , style: 
              TextStyle(
                fontSize: 13,
                color: black.withOpacity(0.7)
              )
              ,),
                SizedBox(width: 10,),
               Container(
                 decoration: BoxDecoration(
                   color: black,
                   borderRadius: BorderRadius.circular(5),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Text("EDIT ACCOUNT" , 
                     style: TextStyle(
                       fontSize: 13 , 
                       color: white
                     ),
                     ),
                   ),
                 ),
               )
            ],
          )
            ],
          ),
        ),
        SizedBox( height: 40,),
         Padding(
           padding: const EdgeInsets.only(left: 20 , right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
Row(
  children: [
    Icon(FontAwesomeIcons.box , color: black,),
    SizedBox(width: 10,),
    Text("Orders" , style: TextStyle(
      fontSize:13,
    ),)
  ],
),
Row(
  children: [
    Icon(FontAwesomeIcons.mapMarkerAlt , color: black,),
    SizedBox(width: 10,),
    Text("My Address" , style: TextStyle(
      fontSize:13,
    ),)
  ],
),
Row(
  children: [
    Icon(FontAwesomeIcons.cog , color: black,),
    SizedBox(width: 10,),
    Text("Settings" , style: TextStyle(
      fontSize:13,
    ),)
  ],
)
             ],
           ),
         ),
         SizedBox(height: 30,),
         Divider(
           thickness: 1,
         ),
          SizedBox(height: 30,),
         Padding(
           padding: const EdgeInsets.only(left: 30 , right: 30),
           child: Column(
             children: List.generate(accountList.length, (index) {
               return Padding(
                 padding: const EdgeInsets.only(bottom: 15),
                 child: Column(
children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(accountList[index],
      style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
      ),
      Icon(
        Icons.arrow_forward_ios,
        size: 17,
        color: black.withOpacity(0.5),
      )
    ],
  ),
  SizedBox(height: 15,),
  Divider(
    color: grey,
  )
],
                 ),
               );
             }),
           ),
         )
      ],
    );
  }
}