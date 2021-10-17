import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.category, color: Colors.black),
          title: Row(
            children: [
              Text("mobi", style: TextStyle(color: Colors.black)),
              Text("sport" , style: TextStyle(color: Colors.grey)),
            ],
          ),
          actions: [
            Icon(Icons.search, color: Colors.black)
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              child: Row(
                children : [
                Text("Running", style: TextStyle(color: Colors.black,  fontSize: 25)),
                SizedBox(width: 315,),
                Text("15 results", style: TextStyle(color: Colors.grey,),),
                ],
              ),
            ),
          abc("Men's", "FuelCell Echo", "99.99", "pic1.jpg"),
          abc("Men's FuelCell", "Rebel", "129.99", "pic2.jpg"),
          abc("Side blocks", "1200", "139.99", "pic3.jpg"),
          SizedBox(height: 40,),
         Container(
           child: Row(
             children: [
               Icon(Icons.home, color: Colors.red),
               SizedBox(width: 90,),
               Icon(Icons.category, color: Colors.red),
                SizedBox(width: 90,),
                Icon(Icons.backpack, color: Colors.red),
                 SizedBox(width: 90,),
                 Icon(Icons.person, color: Colors.red),
                  SizedBox(width: 90,),
                  Icon(Icons.more_horiz, color: Colors.red)

             ],
           ),
         ) 
          ],
             
      ),
      
    )
    );
    
  }
}
Widget abc(String text1, String text2, String price, String url){
  return  Container(
             child: Row(
                children: [
                   Container(
                     width: 150,
                     height: 150,
                     child: Image.asset(url),
                   ),
                Column(
                  children: [
                    Text(text1),
                    Text(text2),
                    SizedBox(height: 20,),
                    Text("*****" ,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                    Text(price, style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20,),),
                  ],
                )
                ],
              ),
           );
           SizedBox(height: 35);
              
            
}