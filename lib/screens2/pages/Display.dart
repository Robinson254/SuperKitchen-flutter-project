// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:settings/screens/search.dart';
import 'package:settings/screens2/details.dart';
import 'package:settings/widgets/kitchen.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      //backgroundColor: Color.fromARGB(255, 231, 182, 107),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 231, 182, 107),
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          "Super Kitchen",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Search();
                }));
              }),
              icon: Icon(Icons.search,color:Colors.white,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Icon(Icons.notifications, size: 30, color: Colors.white),
              Positioned(
                top: 4,
                right: 5,
                child: CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.green,
                ),
              ),
            ]),
          )
        ],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          children: List.generate(Kitchen.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailsScreen();
                  }));
                },
                child: Container(
                  child: Image(
                    // color: Colors.white,
                    image: AssetImage(
                      Kitchen[index]['image'],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
