// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, non_constant_identifier_names



import 'package:flutter/material.dart';
import 'package:settings/screens/list.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  List _FoundItems=[];

  void initState() {
    // ignore: todo
    // TODO: implement initState
    _FoundItems=Kitchen;
    super.initState();
  }

void _runFilter(enterKeyword){
  List _Result=[];

  if(enterKeyword.isempty)
  _Result=Kitchen;
  else{
    _Result=Kitchen.where((items) => 
    items['name'].toLowerCase().contains(enterKeyword.toLowerCase()),).toList();
  }
  setState(() {
    _Result=_FoundItems;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
       // leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(
            horizontal:10.0,
            vertical:20.0,
            ),
          child: Container(
           decoration: BoxDecoration(
             color: Color.fromARGB(255, 231, 182, 107),
             borderRadius: BorderRadius.circular(30.0),
           ),
            child: TextField(
              onChanged: (value) => 
              _runFilter(value),
      decoration: InputDecoration(
            fillColor: Colors.black26,
            constraints: BoxConstraints(
              maxWidth: 250.0,
              maxHeight: 100.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText:"Search",
            suffixIcon:Icon(Icons.search) ,
      ),
              
            ),
          ),
          
        ),
      
        ),
    );
  }
}