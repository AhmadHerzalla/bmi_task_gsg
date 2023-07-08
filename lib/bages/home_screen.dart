import 'package:flutter/material.dart';
import 'package:test_new_tool/constans.dart';
import 'package:test_new_tool/medule/cal_brain.dart';
import '../medule/counter_carde.dart';
import '../medule/gendar_carde.dart';
import '../medule/my_fab.dart';
import 'bmi_result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  CalBrain brain=CalBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: const Text("BMI CALAULATER APP"),
      ),

      body:  Column(
        children: [

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Gender(
                genderIcon: Icons.male,
                genderText: "MALE",
                color:brain.mailcolor ,
                 determenGender:(){
                               setState(() {
                               brain.determenGender("Male"); });
               } ),
             
              Gender(
                genderIcon: Icons.female,
                genderText: "FEMALE",
                color:brain.femailcolor ,
                 determenGender:(){
                               setState(() {
                              brain.determenGender("Female"); });
               } ),   
               

             
           ]),

          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsetsDirectional.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: cardeColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center ,
                children: [
                  const Text("HEIGHT",style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${brain.displyHeight}",style:
                       const TextStyle(
                        fontSize: 40,
                        color: textColor,
                        fontWeight: FontWeight.bold),),
                        const Text("cm",style:
                       TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    width: 352,
                    child: Slider(
                      inactiveColor: Colors.grey,
                      thumbColor: Colors.white,
                      activeColor: Colors.pink,
                      max: 350,
                      value: brain.height,
                       onChanged:(height){
                        setState(() {
                          brain.height = (height);
                          brain.displyHeight= (brain.height).toInt();
                        });
                       } ),
                  ),
                ],
              ),
            ),
          ),
          
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                      Counter(
                           type:" WEIGHT",
                           number:brain.weight,
                           addButton: ButtonCustom(
                                     Icons.add, (){
                                     setState(() {
                                            brain.incrementWeight(); });
                              }), 
                           subButton: ButtonCustom(
                                      Icons.remove_outlined, (){
                                      setState(() {
                                           brain.decrementWeight();}); 
                              }),                                                  
                        ),
                         Counter(
                                type:"AGE",
                                number:brain.age,
                                addButton: ButtonCustom(
                                       Icons.add, (){
                                       setState(() {
                                        brain.incrementAge();
                                      });
                              }),
                            
                                subButton: ButtonCustom(
                                        Icons.remove_outlined, (){
                                        setState(() {
                                       brain.decrementAge();});                                  
                               }),                          
                        ),
                    ],),


                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.pink),
                  onPressed: (){ 
            Navigator.push(
              context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ResultScreen(brain.ismale,brain.displyHeight,brain.weight,brain.age),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  ),
);
                    },
                     child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("CALAULATE YOUR BMI",style: TextStyle(
                          color: textColor,
                          fontSize: 24
                         ),),
                       ],
                     )),
                )
        ],)
    );
  }
}