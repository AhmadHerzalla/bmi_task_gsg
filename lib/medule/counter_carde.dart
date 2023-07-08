import 'package:flutter/material.dart';
import 'package:test_new_tool/constans.dart';
import 'package:test_new_tool/medule/my_fab.dart';


class Counter extends StatelessWidget {
  final String? type;
  final int? number;
  final  ButtonCustom? addButton;
   final  ButtonCustom? subButton;

 
    const Counter(
 
     {
      super.key,
       this.type,
       this.number,
       this.addButton,
       this.subButton
          }
   );

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal:16,vertical: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardeColor,
          borderRadius: BorderRadius.circular(24)
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
        children: [
          const SizedBox(height: 32,),
          Text(type??" ",),
          Text("${number??0}",style: const TextStyle(
            color: textColor,
            fontSize:28,
            fontWeight: FontWeight.bold,
            
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              addButton!,
              subButton!
            ],
         )
        
        
          
         
          ]
          ),
      ),
    );
  }
}
