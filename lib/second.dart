import 'package:flutter/material.dart';
import 'package:flutter_pro/data.dart';

class Second extends StatefulWidget {
 
  @override
  _HomeState  createState() => _HomeState();
  
}



class _HomeState extends State < Second > {
   
    
  @override
  Widget build(BuildContext context) {

    // Data d =ModalRoute.of(context)!.settings.arguments;
   //Data data =  ModalRoute.of(context).settings.arguments;

   final args = ModalRoute.of(context)!.settings.arguments as Data;

      return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 38, 59),
      body:  
      
             Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: Text('Your Result',
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                ),
                SizedBox(height: 10,),
                 Center( 
                    child : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container ( height: 560, width: double.infinity,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 50, 50, 68),
                      borderRadius: BorderRadius.all(Radius.circular(10),),),
                        child:
                         Center(
                           child: Column (
                            children: <Widget>[
                              SizedBox(height: 80,),
                              Text(args.state,style: TextStyle(fontSize: 20,color: args.color,fontWeight: FontWeight.bold),),
                              SizedBox(height: 80,),
                              Text('${args.result}',style: TextStyle(fontSize: 60,fontWeight: FontWeight.w900,color: Colors.white),),
                              SizedBox(height:80 ,),
                              Text(args.text_result,style: TextStyle(color: Colors.white,fontSize: 22),),
                              Text(args.text,style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                        ),
                         ), 
                        ),
                    ),
                   ),
                   Container( width : double.infinity ,height: 70 ,
                child: ElevatedButton(

                  
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 232, 61, 102),
                ),
                ),
                ),

              ],
              ),
          
        
      
    );

   }
  
  }