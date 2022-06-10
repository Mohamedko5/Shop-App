import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopapp/json/constant.dart';
import 'package:shopapp/theme/color.dart';

class CartPage extends StatefulWidget {
  const CartPage({ Key key }) : super(key: key);

  @override
  _Cart_PageState createState() => _Cart_PageState();
}

class _Cart_PageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  getBody(){
    return ListView(
children: [Column(
  children: List.generate(cartList.length, (index) {
    return Column(
children: [
  Padding(
    padding: const EdgeInsets.only(top: 20 , left: 20, right: 20),
    child: Row(
      children:[
        Container(
          width: 140,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: NetworkImage(cartList[index]['img']) , fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cartList[index]['name'] ,
            style: TextStyle(
              fontSize: 18,
            ),
            ),
            SizedBox(height: 10,),
             Text("ref :" +cartList[index]['ref'] ,
            style: TextStyle(
              fontSize: 13,
              color: black.withOpacity(0.7)
            ),
            ),
SizedBox(height: 10,),
             Text(cartList[index]['size'] ,
            style: TextStyle(
              fontSize: 22,
            ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                 Text(cartList[index]['price'] ,
            style: TextStyle(
              fontSize: 22,
            ),
            ),
            SizedBox(width: 20,),
             Row(
               children: [
                 Container(
                   width: 25,
                   height: 25,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                       color: black.withOpacity(0.5)
                     )
                    ),
                    child: Center(
                      child: Icon(FontAwesomeIcons.minus , color:  black.withOpacity(0.5),size: 10,),
                    ),
                    
                 ),
                 SizedBox(width: 10,),
                 Text("1" , style: TextStyle(fontSize: 15),),
                 SizedBox(width: 10,),
                 Container(
                   width: 25,
                   height: 25,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                       color: black.withOpacity(0.5)
                     )
                    ),
                    child: Center(
                      child: Icon(FontAwesomeIcons.plus , color:  black.withOpacity(0.5),size: 10,),
                    ),
                    
                 ),

               ],
             )
              ]
            )
          ],
        )
      ]
    ),
  ),
  SizedBox(height: 20,)
],
    );

  })
),
SizedBox(height: 20,),
Divider(
  color: grey.withOpacity(0.5),
),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.only(left:30 , right: 30),
  child:   Text("Do you have a promotion" , style: TextStyle(
    fontSize: 16,
  ),),
),
SizedBox(height: 15,),
Divider(
  color: grey.withOpacity(0.5),
),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.only(left: 10 , right:10),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Delivery" , 
      style: TextStyle(
        fontSize: 15
      ),
      ),
      Text("Standard-Free" , 
      style: TextStyle(
        fontSize: 15
      ),
      ),
     
    ],
  ),
),
 SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left:20 ,right: 20),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.circular(50/2),
          ),
          child: Center(
            child: Text("Buy for \$50".toUpperCase() ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: white,
            ),
            ),
          ),
        ),
      )

],

    );
  }
}