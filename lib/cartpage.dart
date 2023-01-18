import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // DateTime currentDateTime = DateTime(1);


  List week = [
    'Son',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];

  List<String> month = [
    'Jan',
    'Fab',
    'Mar',
    'Apr',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  DateTime currentDateTime = DateTime.now();
  TimeOfDay currentTime = TimeOfDay.now();


  @override
  Widget build(BuildContext context) {

     // dynamic addproduct = ModalRoute.of(context)!.settings.arguments as dynamic;

    return  CupertinoPageScaffold(
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
                  child: Text("Shopping Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35),),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0,left: 18,right: 18,top: 12),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CupertinoTextField(
                          keyboardType: TextInputType.name,
                          decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                ),
                              )),
                          onChanged: (val) {
                            setState(() {

                            });
                          },
                          placeholder: 'Name',
                          prefix: Icon(Icons.person,color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: CupertinoTextField(
                            keyboardType: TextInputType.name,
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                            ),
                            onChanged: (val) {
                              setState(() {

                              });
                            },
                            placeholder: 'Email',
                            prefix: Icon(Icons.email,color: Colors.grey,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: CupertinoTextField(
                            keyboardType: TextInputType.name,
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                  ),
                                )),
                            onChanged: (val) {
                              setState(() {

                              });
                            },
                            placeholder: 'Location',
                            prefix: Icon(Icons.location_on,color: Colors.grey,),
                          ),
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined,color: Colors.grey,size: 27,),
                            SizedBox(width: 6,),
                            Text("Delivery time",style: TextStyle(color: Colors.grey[400],fontSize: 18),),
                            Spacer(),
                            (currentTime.period.name == 'pm')
                            ? (currentTime.hour == 12)
                                ? Text("${month[currentDateTime.month - 1]} ${currentDateTime.day}, ${currentDateTime.year} ${currentTime.hour}:${currentTime.minute} ${currentTime.period.name.toUpperCase()}",style: TextStyle(color: Colors.grey[700]),)
                                : Text("${month[currentDateTime.month - 1]} ${currentDateTime.day}, ${currentDateTime.year} ${currentTime.hour - 12}:${currentTime.minute} ${currentTime.period.name.toUpperCase()}",style: TextStyle(color: Colors.grey[700]),)
                            : (currentTime.hour == 0)
                               ? Text("${month[currentDateTime.month - 1]} ${currentDateTime.day}, ${currentDateTime.year} ${currentTime.hour + 12}:${currentTime.minute} ${currentTime.period.name.toUpperCase()}",style: TextStyle(color: Colors.grey[700]),)
                               : Text("${month[currentDateTime.month - 1]} ${currentDateTime.day}, ${currentDateTime.year} ${currentTime.hour}:${currentTime.minute} ${currentTime.period.name.toUpperCase()}",style: TextStyle(color: Colors.grey[700]),)
                          ],
                        ),
                        Container(
                          height: 180,
                          width: double.infinity,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.dateAndTime,
                              minimumYear: 2010,
                              maximumYear: 2030,
                              onDateTimeChanged: (dateTime) {

                              int h = dateTime.hour;
                              int m = dateTime.minute;

                            setState(() {
                              currentDateTime = dateTime;
                              currentTime = TimeOfDay(hour: h, minute: m);
                            });
                          }),
                        ),
                        Container(
                          height: 205,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [...Global.A1.map((e) =>
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            color: Colors.black,
                                            height: 60,
                                            width: 50,
                                            child: Image.asset("${e['image']}",fit: BoxFit.fill),
                                          ),
                                          Column(
                                            children: [
                                              Text("${e['title']}",style: TextStyle(fontSize: 20),),
                                              SizedBox(height: 5,),
                                              Text("\$${e['price']}.00",style: TextStyle(fontSize: 15,color: Colors.grey),),
                                            ],
                                          ),
                                          Spacer(),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("\$${e['price']}.00",style: TextStyle(fontSize: 20),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                ).toList(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Shipping   \$21.00",style: TextStyle(color: Colors.grey,fontSize: 15),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tax   \$${Global.tax.toStringAsFixed(2)}",style: TextStyle(color: Colors.grey,fontSize: 15),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Total   \$${Global.totals + 21 + Global.tax}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
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
