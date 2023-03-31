// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:settings/screens/settings.dart';
import 'package:settings/widgets/kitchen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 231, 182, 107),
        title: Text("SuperKitchen"),
        actions: [
          GestureDetector(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Settings();
              }));
            }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings,color: Colors.white,),
            )),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cups',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shopping_cart, size: 20, color: Colors.grey)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: <BoxShadow>[
                  BoxShadow(spreadRadius: 2, blurRadius: 1, color: Colors.black12)
                ]),
                child: Image(image: AssetImage('removebg/cleaners/wrapper.png')),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("D e t a i l s :",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Name: Cups',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Price: USSD 300',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.black12)
                          ]),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black45,
                          )),
                      Text("Rate",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black12)
                          ]),
                          child: Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.black45,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 231, 182, 107)),
                        onPressed: () {},
                        child: Text('Purchase')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.shopping_cart,
                        size: 30,
                        color: Color.fromARGB(255, 231, 182, 107),
                      ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
