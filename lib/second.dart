import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                              Text('NORMAL',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 94, 198, 163),fontWeight: FontWeight.bold),),
                              SizedBox(height: 80,),
                              Text('19.2',style: TextStyle(fontSize: 80,fontWeight: FontWeight.w900,color: Colors.white),),
                              SizedBox(height:80 ,),
                              Text('You have a normal body weight.',style: TextStyle(color: Colors.white,fontSize: 22),),
                              Text('Good job !',style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                        ),
                         ), 
                        ),
                    ),
                   ),
                   Container( width : double.infinity ,height: 70 ,
                child: ElevatedButton(
                  
                  onPressed: (){
                   // Navigator.pushNamed(context, '/');
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