import 'package:flutter/material.dart';

import 'package:statemanagement_provider/screens/example_one.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/provider/exampleone_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
      ],
      child: MaterialApp(
        home: ExampleOneScreen(),
      ),
    );
  }
}

