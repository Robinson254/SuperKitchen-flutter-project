import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:settings/CustomWidgets/custom_text_form_field.dart';
import 'package:settings/pages/Display.dart';
import 'package:settings/screens2/pages/Display.dart';

class KitchenLogin extends StatefulWidget {
  const KitchenLogin({super.key});

  @override
  State<KitchenLogin> createState() => _KitchenLoginState();
}

class _KitchenLoginState extends State<KitchenLogin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 231, 182, 107),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: [
                    ...List.generate(
                      3, 
                      (index) => PageView(
                        children: [
                          Container(   
                            constraints: BoxConstraints(
                              maxHeight: screenSize.height,
                              maxWidth: screenSize.width,
                            ),
                            color: Colors.transparent,
                            child: const Image(
                              image: AssetImage("assets/gp_3.png"),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ], 
                  options: CarouselOptions(
                    autoPlay: true,
                    height: screenSize.height * 0.25,
                    autoPlayAnimationDuration: const Duration(seconds: 5),
                    autoPlayInterval: const Duration(seconds: 10),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                CustomTextFormField(
                  controller: email,
                  validator: (val){

                  },
                  label: "E-mail",
                  hintText: "Address...",
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.brown,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.07),
                CustomTextFormField(
                  controller: email,
                  validator: (val){

                  },
                  obsecureText: secure,
                  label: "Password",
                  hintText: "Password...",
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.brown,
                    ),
                  ),
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.password,
                      color: Color.fromARGB(255, 180, 146, 97),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.12),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.3,
                  ),
                  child: TextButton(
                    onPressed: (){

                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 202, 168, 118),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage("assets/google.png"),
                              ),
                            ),
                          ),
                          SizedBox(width: screenSize.width / 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return HomePage1();
                              }));
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}