import 'package:flutter/material.dart';
import 'package:test_new_tool/constans.dart';

class Gender extends StatelessWidget {
   final IconData? genderIcon;
   final String? genderText;
   final Color? color;
   final  Function() determenGender;

   const Gender( 
     {
      super.key, 
      this.genderIcon,
       this.genderText,
        this.color,
         required this.determenGender
         } 
    );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        
        onTap:determenGender ,
      
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal:14,vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardeColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Column(    
          children: [
            Icon(
              genderIcon,
              size:128 ,
              color:color,
              ),
            const SizedBox(height: 16),
            Text(
              genderText??" ",
              style: TextStyle(
              fontSize: 16,
              color: color
              ),
              ),
          ]
          ),
      ),
      ),
    );
  }
}