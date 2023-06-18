import 'package:flutter/material.dart';

void main() {
 runApp(MaterialApp(
   home: SafeArea(
     child: Scaffold(
       body: MyApp(),
     ),
   ),
 ));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
      child: Column(
        children: [
          Container(
            child: const Image(
              image: NetworkImage('https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true'),
            ),
          ),
          Container(
            height: 65,
            width: 400,
            padding: EdgeInsets.fromLTRB(15,5,15,5),
            //decoration: BoxDecoration(
              //border: Border.all(color: Colors.black, width: 3)
            //),
            margin: const EdgeInsets.fromLTRB(10,20,10,5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Oeschinen Lake Campground',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600
                      ),
                    ),

                    Text('Kandersteg, Switzerland',
                      style: TextStyle(
                        fontSize: 13, color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,
                      color: Colors.red,),
                    Text('41'),
                  ],
                )

              ],
            )
          ),
            Container(
            height: 75,
            width: 300,
            padding: EdgeInsets.fromLTRB(20,5,20,5),
            //decoration: BoxDecoration(
            //border: Border.all(color: Colors.black, width: 3)
            //),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.call,color: Colors.lightBlue,size: 25),
                      Text('CALL',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.lightBlue
                      )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.near_me,color: Colors.lightBlue,size: 25),
                      Text('ROUTE',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.lightBlue
                          )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.share ,color: Colors.lightBlue,size: 25),
                      Text('SHARE',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.lightBlue
                          )),
                    ],
                  )
                ],
              ),
            ),
                Container(
                height: 160,
                width: 350,
                  padding: EdgeInsets.fromLTRB(5,10,5,10),
                  margin: const EdgeInsets.fromLTRB(10,5,10,5),
                //decoration: BoxDecoration(
                //border: Border.all(color: Colors.black, width: 3)
                  //),
                  child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.'
                      ,
                        textAlign: TextAlign.left),
                )
        ],
      ),
      )

    );
  }
}