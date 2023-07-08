import 'package:flutter/material.dart';
import 'package:test_new_tool/constans.dart';

class ResultScreen extends StatefulWidget {
 final bool gender;
 final int hight;
 final int weight;
 final int age;
   
   
   const ResultScreen(
    this.gender,
    this.hight,
    this.weight,
    this.age,
    {super.key});
    

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}
class _ResultScreenState extends State<ResultScreen> {
  String? topText;
  String? bottomText;
  double? result;
  void clacolate(){
    result=double.parse((widget.weight/(widget.hight/100*widget.hight/100)).toStringAsFixed(1));
     if(0<result!&&result!<=18){
      topText="UnderWeight";
      bottomText="you have a UnderWeight body wieght You need to eat more";
    }
     else if(18<result!&&result!<24.9){
      topText="Normal";
      bottomText="you have a normal body wieght good jop";
    }
    else if(25<result!&&result!<29.9){
      topText="OverWeight";
      bottomText="you have a OverWeight body wieght You need some sport";
    }
    else if(30<result!&&result!<34.9){
      topText="Obesity ";
      bottomText="you have a Obesity body wieght You need diet and some sport";
    
    }
     else {
      topText = "Morbid Obesity ";
      bottomText="you have a Obesity body wieght You need harde  diet and some sport";
      
    }
  }

  @override
  Widget build(BuildContext context) {
    clacolate();
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALAULATER APP"),
        automaticallyImplyLeading :false,
        ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Your Result",style: TextStyle(
              color: textColor,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: const EdgeInsets.all(16),
              
              decoration: BoxDecoration(
                color: cardeColor,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(topText??"",style: const TextStyle(
                    color: Colors.green,
                    fontSize: 18
          
                    
                  ),
                  ),
                  Text("$result",style: const TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.bold
                    
                  ),
                  ),
                   Text(bottomText??" ",
                  style: const TextStyle(
                       color: Colors.white,
                       fontSize: 24,),
                       textAlign:TextAlign.center,
                  ),
       
              ],),
            ),
          ),
           const SizedBox(height: 40),
              Expanded(
                child: TextButton(
                
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink
                  ),
                  onPressed: (){
                    Navigator.pop(context);

          //           Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const HomeScreen(),
            
          //   ),
            
          // );
         
          
                  },
                   child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("RE-CALAULATE",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                       ),),
                     ],
                   )),
              )

        ],),
    );
  }
}