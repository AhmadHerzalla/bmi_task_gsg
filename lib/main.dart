

import 'package:flutter/material.dart';

import 'bages/home_screen.dart';

void main() {
  runApp(MaterialApp(home: const HomeScreen(),
  
   theme: ThemeData.dark().copyWith(
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 24),
      
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.grey[900],
      elevation: 0),
      scaffoldBackgroundColor:Colors.grey[900] 
  ),
 
));
}



