import 'package:flutter/material.dart';
import 'package:flutter_pro/second.dart';


class Home  extends StatefulWidget {
 
  @override
  _HomeState  createState() => _HomeState();
  
}



class _HomeState extends State < Home > {
   double _currentSliderValue = 181 ;
   String height  = '181'; 
   List<bool> isSelected = [true, false]; 
  List<IconData> iconList = [Icons.male, Icons.female ];
  List<String> textList = ['MALE', 'FEMALE'];
   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 38, 59),
      appBar: AppBar(centerTitle: true ,title: Text('BMI CALCULATOR', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
      backgroundColor: Color.fromARGB(255, 36, 38, 59),
      ),
      body: Column(
          children:<Widget> [
            Padding(
        padding: const EdgeInsets.all(15.0),
        child: Ink(
        width: double.infinity,
        height: 190, 
        color: Color.fromARGB(255, 36, 38, 59),
        child: GridView.count(
          primary: true,
          crossAxisCount: 2, //set the number of buttons in a row
          crossAxisSpacing: 25, //set the spacing between the buttons
           childAspectRatio: 0.90, //set the width-to-height ratio of the button, 
                               //>1 is a horizontal rectangle
          children: List.generate(isSelected.length, (index) {
            //using Inkwell widget to create a button
            return InkWell( 
               // splashColor: Colors.yellow, //the default splashColor is grey
                onTap: () {
                  //set the toggle logic
                  setState(() { 
                    for (int indexBtn = 0;
                        indexBtn < isSelected.length;
                        indexBtn++) {
                      if (indexBtn == index) {
                        isSelected[indexBtn] = true;
                      } else {
                        isSelected[indexBtn] = false;
                      }
                    }
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                 //set the background color of the button when it is selected/ not selected
                    color: isSelected[index] ? Color.fromARGB(255, 50, 50, 68) : Color.fromARGB(255, 41, 41, 65), 
                    // here is where we set the rounded corner
                    borderRadius: BorderRadius.circular(8), 
                    //don't forget to set the border, 
                    //otherwise there will be no rounded corner
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(height: 38,),
                    Icon(iconList[index], size: 90,
                      //set the color of the icon when it is selected/ not selected
                      color: isSelected[index] ? Colors.white : Colors.white),
                      SizedBox(height: 5,),
                      Text(textList[index],style: TextStyle(color: Colors.grey,fontSize: 15,),),
                  ],)
                  
                  
                  
                      
                ),);
          }),
        ),
    ),
      ),
             

              Padding(
                padding: const EdgeInsets.only(left: 15 , right: 15 , top: 5 , bottom: 10),
                child: Container( width: double.infinity,height: 170,
                decoration: BoxDecoration(color: Color.fromARGB(255, 50, 50, 68),
                borderRadius: BorderRadius.all(Radius.circular(10),
                ),
                ),

                  child: Center(
                  child: Column(children: <Widget> [
                     SizedBox(height: 25,),
                          Text('HEIGHT', style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Center(
                            child: Row ( mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text('${height}',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900,), ),
                                Text ('cm',style: TextStyle(fontSize: 15,color: Colors.white,),),
                        
                            ],
                            ),
                          ),
                          Slider(
                          value: _currentSliderValue,
                          activeColor: Color.fromARGB(255, 232, 61, 102),
                          max: 250,
                           label: _currentSliderValue.round().toString(),
                           onChanged: ( value) {
                          setState(() {
                         _currentSliderValue = value;
                         height = _currentSliderValue.round().toString();
                            });
                             },
                            ),
                  ],
                  ), 
                  ),
                  ),
              ),


                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                    Container( 
                      width: 168, height:  180,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 50, 50, 68),
                    borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                         Column(children: <Widget>[
                          SizedBox(height: 15,),
                          Text('WEIGHT', style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('60', style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               FloatingActionButton(
                               backgroundColor: Color.fromARGB(255, 93, 95, 110),
                                mini: true,
                                onPressed: (){},
                                child: Icon(Icons.remove,), ),
                                FloatingActionButton( 
                                backgroundColor: Color.fromARGB(255, 93, 95, 110),
                                mini: true,
                                onPressed: (){},
                                child: Icon(Icons.add,),
                          ),
                          ],
                            ),
                        ],
                        ),
                      ),
                    ),


                    Container(
                      width: 168, height:  180,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 50, 50, 68),
                    borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: <Widget>[
                          SizedBox(height: 15,),
                          Text('AGE', style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('25', style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               FloatingActionButton(
                               backgroundColor: Color.fromARGB(255, 93, 95, 110),
                                mini: true,
                                onPressed: (){},
                                child: Icon(Icons.remove,), ),
                                FloatingActionButton( 
                                backgroundColor: Color.fromARGB(255, 93, 95, 110),
                                mini: true,
                                onPressed: (){},
                                child: Icon(Icons.add,),
                          ),
                          ],
                            ),
                        ]),
                      ),
                    ),
                   ],
                   ),
                 ),
                
                SizedBox(height: 8,),
              
             
              Positioned(bottom : 0 , child: Container( width : double.infinity ,height: 70 ,
                child: ElevatedButton(
                  
                  onPressed: (){
                    // Navigator.pushNamed(context, '/second');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));
                  }, 
                child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 232, 61, 102),
                ),
                ),
                ),
                ),
          ],
        ),
      
              );    
  }
}
