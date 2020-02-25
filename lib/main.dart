import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _n1controller = TextEditingController();
  final TextEditingController _n2controller = TextEditingController();
  final TextEditingController _d1controller = TextEditingController();
  final TextEditingController _d2controller = TextEditingController();
  double n1 = 0.0, d1 = 0.0, n2 = 0.0, d2 = 0.0, result = 0.0;
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Fraction Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
             Flexible(child: 
             Padding(
              padding:EdgeInsets.fromLTRB(40, 30, 30, 0),
                         child: TextField(
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(const Radius.circular(15.0))
                              ),
                               filled: true,
                               fillColor: Colors.pinkAccent ,
                               hintText: "Numerator1",
                        ),
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: _n1controller,                       
                         ),              
              ),
                ),
              Flexible(child: 
               Padding(
              padding:EdgeInsets.fromLTRB(30, 30, 40, 0),
                         child: TextField(
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(const Radius.circular(15.0))
                              ),
                               filled: true,
                               fillColor: Colors.pinkAccent ,
                               hintText: "Numerator2",
                        ),
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: _n2controller,                       
                         ),              
              ),
               ),
              ],),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[ 
            Padding(
              padding:EdgeInsets.fromLTRB(50, 0, 30, 0),
              child: Text("___________________"),              
              ),
            Padding(
              padding:EdgeInsets.fromLTRB(30, 0, 60, 0),
              child: Text("__________________"),              
              ),
           
           
            ],), 
            
            Row(
              children: <Widget>[
                Flexible(child: 
                Padding(
                  padding:EdgeInsets.fromLTRB(40, 10, 31, 0),
                         child: TextField(
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(const Radius.circular(15.0))
                              ),
                               filled: true,
                               fillColor: Colors.pinkAccent ,
                               hintText: "Denominator1",
                        ),
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: _d1controller,                       
                         ),              
              ),
                ),
               Flexible(child:  
                Padding(
                  padding:EdgeInsets.fromLTRB(30, 10, 45, 0),
                         child: TextField(
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(const Radius.circular(15.0))
                              ),
                               filled: true,
                               fillColor: Colors.pinkAccent ,
                               hintText: "Denominator2",
                        ),
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: _d2controller,                       
                         ),              
              ),
              
            ),],),
            
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Padding(
                 padding: EdgeInsets.fromLTRB(5, 40, 5, 15),
                 child: new MaterialButton(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  height: 45,
                 color: Colors.lightBlueAccent,
                 child: Text("+" ,style:new TextStyle(fontSize: 25.0)),                                                    
                 onPressed: _addPress,
                   ),  
                    ),
                              
                 Padding(
                 padding: EdgeInsets.fromLTRB(5, 40, 5, 15),
                 child: new MaterialButton(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                 height: 45,
                 color: Colors.lightBlueAccent,
                 child: Text("-" ,style:new TextStyle(fontSize: 30.0)),
                 onPressed: _minusPress, 
                  ),
                  ),
                             
                 Padding(
                 padding: EdgeInsets.fromLTRB(5, 40, 5, 15),
                 child: new MaterialButton(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                 ),
                 height: 45,
                 color: Colors.lightBlueAccent,
                 child: Text("*",style:new TextStyle(fontSize: 25.0)),                            
                 onPressed: _multiplyPress,
                                                            
                  ),
                   ),  
                                                         
                 Padding(
                 padding: EdgeInsets.fromLTRB(5, 40, 5, 15),
                 child: new MaterialButton(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                 height: 45,
                 color: Colors.lightBlueAccent,
                 child: Text("/",style:new TextStyle(fontSize: 25.0)),                              
                 onPressed: _dividePress,
                   ),
                      ),
                         ],),
                                                                                                                                                          
                Text("Result: $result",style:new TextStyle(fontSize: 30.0)),

                 Padding(
                 padding: EdgeInsets.fromLTRB(30, 30,30, 15),
                 child: new MaterialButton(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.0))
                   ),
                 height: 60,
                 minWidth: 150,
                 color: Colors.lightBlueAccent,
                 child: Text("Reset",style:new TextStyle(fontSize: 25.0)),                              
                onPressed: _resetPress,
                  ),
                   ),         ],
                     ),
                   ),
                          );
                                }
                                                                                                                                                                                                                      
                                                                                                                                                                     void _addPress() {
                                                                                                                                                                       setState((){
                                                                                                                                                                      n1 = double.parse(_n1controller.text);
                                                                                                                                                                      d1 = double.parse(_d1controller.text);
                                                                                                                                                                      n2 = double.parse(_n2controller.text);
                                                                                                                                                                      d2 = double.parse(_d2controller.text);
                                                                                                                                                                      result = ((n1*d2)+(n2*d1))/(d1*d2);
                                                                                                                                          
                                                                                                                                                                    });
                                                                                                                                                                                          }
                                                                                                                                                                                        
                                                                                                                                                void _minusPress() {
                                                                                                                                                  setState((){
                                                                                                                                                n1 = double.parse(_n1controller.text);
                                                                                                                                                d1 = double.parse(_d1controller.text);
                                                                                                                                                n2 = double.parse(_n2controller.text);
                                                                                                                                                d2 = double.parse(_d2controller.text);
                                                                                                                                                result = ((n1*d2)-(n2*d1))/(d1*d2);
                                                                                                                                            
                                                                                                                   });
                                                                                                                                                        }
                                                                                                                                                      
                                                                                                                       void _multiplyPress() {
                                                                                                                       setState((){
                                                                                                                       n1 = double.parse(_n1controller.text);
                                                                                                                       d1 = double.parse(_d1controller.text);
                                                                                                                       n2 = double.parse(_n2controller.text);
                                                                                                                       d2 = double.parse(_d2controller.text);
                                                                                                                       result = (n1*n2)/(d1*d2);
                                                                                      
                                                                                                                     });
                                                                                                                          }
                                                                                                                        
                                                                                            void _dividePress() {
                                                                                            setState((){
                                                                                             n1 = double.parse(_n1controller.text);
                                                                                             d1 = double.parse(_d1controller.text);
                                                                                             n2 = double.parse(_n2controller.text);
                                                                                             d2 = double.parse(_d2controller.text);
                                                                                             result = (n1*d2)/(n2*d2);
                                                            
                                                                                          });   
                                                              }
                                                            
                                                              void _resetPress() {
                                                                setState((){
                                                                _n1controller.clear();
                                                                _d1controller.clear();
                                                                _n2controller.clear();
                                                                _d2controller.clear();
                                                                result = 0.0;
                                                            
                                                                                          });   
  }
}