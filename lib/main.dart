import 'package:flutter/material.dart';
import 'package:settings/Forms/kitchen.dart';
import 'package:settings/pages/Display.dart';
import 'package:settings/screens/search.dart';
import 'package:settings/screens/settings.dart';
import 'package:settings/screens2/details.dart';
import 'package:settings/screens2/pages/Display.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const KitchenLogin(),
      },
    )
  );
}