import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 231, 182, 107),
        title: Text('settings'),
      ),
   // backgroundColor:Colors.white ,
      body: SafeArea(
        
        child: ListView(
          children: [
            Container(
              height:50.0 ,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  children: [
                //   Icon(Icons.arrow_back),
                //   Text("Settings",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
                //   IconButton(onPressed:() {}, icon: Icon(Icons.help),),
                //  ],
                // ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications",),
                IconButton(icon:Icon(Icons.sell_rounded),onPressed: (){},),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Location",),
                IconButton(icon:Icon(Icons.location_on),onPressed: (){},),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LightMode/DakMode"),
                    IconButton(icon:Icon(Icons.light_mode),onPressed: (){
                      setState(() {
                        
                      });
                    },),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Privacy',),
                    IconButton(onPressed: (){}, icon: Icon(Icons.privacy_tip)),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Theme'),
                    IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode)),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LogOut'),
                    IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode_outlined)),
                  ],
                ),
                Column(
                 
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("Billing and Payments"),
                      ],
                      
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("Purchases and Membership"),
                      ],
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("Accessibility"),
                      ],
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("About"),
                      ],
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("Captions"),
                      ],
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("Manage All History"),
                      ],
                    ),
                     SizedBox(
                      height: 10.0,
                    ),

                    Row(
                       mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text("General"),
                      ],
                    ),
                  ],

                ),
                
              ],
            ),
          
          ],
          
        
        ),
        ),
    );
  }
}