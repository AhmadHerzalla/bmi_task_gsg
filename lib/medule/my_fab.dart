import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCustom extends StatelessWidget {
    IconData? buttonIcon;
    Function onpressed;

   ButtonCustom(
    this.buttonIcon,
    this.onpressed,
   {super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
         shape: const CircleBorder(),
         fillColor: Colors.grey[700],
         constraints: const BoxConstraints().flipped,
      child: Icon(
      buttonIcon,
      color: Colors.white,
      size: 40,),
       onPressed:(){
        onpressed();
       } 
    );
  }
}