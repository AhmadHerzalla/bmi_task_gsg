
import 'package:flutter/material.dart';

class CalBrain{

  double height=150;
  int displyHeight=150;
  Color mailcolor=Colors.white;
  Color femailcolor=Colors.white;
  bool ismale=true;
  int weight=60;
  int age=25;

  void determenGender(String type){
    if (type=="Male"){
      ismale = true ;
      femailcolor=Colors.white;
      mailcolor = Colors.blue;
   }  
   else  {
    ismale = false  ;
    mailcolor=Colors.white;
     femailcolor = Colors.pink;
   }
  }
   void incrementAge(){
     age++;
   }
   void decrementAge(){
     age--;
   }
   void incrementWeight(){
     weight++;
   }
   void decrementWeight(){
     weight--;
   }
   TextStyle textStyleSmall(){
    return const TextStyle(
      fontSize: 8,
      );
   }


}