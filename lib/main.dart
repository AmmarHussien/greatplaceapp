import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Great Places',
    theme: theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(primary: Colors.indigo, secondary: Colors.amber,),
      ),
      home: const ;
    );
  }
}

