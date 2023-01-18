import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  

  var ZE = 0;
  var x;



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Cupertino Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35),),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...Global.product.map((e) =>
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 15,right: 15),
                            child: Row(
                              children: [
                                Container(
                                  color: Colors.black,
                                  height: 90,
                                  width: 80,
                                  child: Image.asset("${e['image']}",fit: BoxFit.fill),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${e['title']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 10,),
                                    Text("\$${e['price']}",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Global.totals = Global.totals + (int.parse(e['price'].toString()));
                                     Global.A1.addAll([e]);
                                      Global.tax = Global.tax + (Global.totals * (6/100));
                                    });
                                  },
                                      child: Icon(Icons.add_circle_outline,color: Colors.green,)),
                              ],
                            ),
                          ),
                      ).toList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
