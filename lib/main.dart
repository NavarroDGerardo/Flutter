import 'package:flutter/material.dart';
import 'dart:math';

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HelloState();
  }
}

class _HelloState extends State<HelloStateful>{
  int variable_estado = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hope Starwars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28, color: Colors.deepPurpleAccent),),
            Text("$variable_estado",
              style: TextStyle(fontSize: 40, color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 50,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: function_zero),
        SizedBox(width: 15,),
        FloatingActionButton(child: Icon(Icons.arrow_back), onPressed: function_minus),
        SizedBox(width: 15,),
        FloatingActionButton(child: Icon(Icons.arrow_forward), onPressed: function_plus),
        SizedBox(width: 15,),
        FloatingActionButton(child: Icon(Icons.arrow_circle_up_outlined), onPressed: function_random),
        SizedBox(width: 15,),
        FloatingActionButton(child: Icon(Icons.cached_outlined), onPressed: funciton_return)
      ],
    );
  }

  void function_plus(){
    setState(() {
      variable_estado++;
    });
  }

  void function_minus(){
    setState(() {
      variable_estado--;
    });
  }

  void function_random(){
    Random random = new Random();
    setState(() {
      variable_estado += random.nextInt(100);
    });
  }

  void funciton_return(){
    setState(() {
      variable_estado = -1;
    });
  }

  void function_zero(){
    setState(() {
      variable_estado = 0;
    });
  }
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 300,
        child: Center(
          child: Text("Flutter", style: TextStyle(fontSize: 24.0, color: Colors.white, fontFamily: 'Arial'),),
        ),
      ),
    );
  }

}


void main() {
  runApp(
    MaterialApp(
      title: "HpeÑ starwars app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HelloStateful(
        ),
      ),
    )
  );
}