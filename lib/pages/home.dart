import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style:TextStyle(color:Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
        child:Container(
          padding:EdgeInsets.all(16.0),
          decoration:BoxDecoration(
            gradient:LinearGradient(
              colors:[Colors.blueAccent, Colors.lightBlueAccent],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight
            ),

          ),
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              SizedBox(height:30.0),
              Text("Welcome Back !", style:TextStyle
              (color:Colors.white, fontSize:32.0)),
              SizedBox(height:10.0),
              Text("Here's what happening today: ", style:TextStyle(color:Colors.white70)),
              SizedBox(height:10.0),
              Card(
                color:Colors.white,
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10.0)

                ),
                elevation:5,
                child:Padding(
                  padding:EdgeInsets.all(16.0),
                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                      Text("Your Tasks", style:TextStyle(color:Colors.blue, fontSize:15.0, fontWeight:FontWeight.bold)),
                      SizedBox(height:10.0),
                      ListTile(
                        leading:Icon(Icons.check_circle, color:Colors.green),
                        title:Text("tache 1")

                      ),
                                ListTile(
                        leading:Icon(Icons.check_circle, color:Colors.orange),
                        title:Text("tache 2")

                      ),
                                ListTile(
                        leading:Icon(Icons.check_circle, color:Colors.red),
                        title:Text("tache 3")

                      ),
                    ]
                  )
                )



              ),



            ],


          )
        ),
      ),
    );
  }
}
