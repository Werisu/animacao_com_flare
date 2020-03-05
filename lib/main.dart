import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splach(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splach extends StatefulWidget {
  @override
  _SplachState createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: FlareActor(
            "animac/Roda.flr",
            animation: "Untitled"
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3)).then((_){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Home())
          );
        }
    );
  }


}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("Enjuru Kuma!", style: TextStyle(fontSize: 30.0), textAlign: TextAlign.center,),
          Container(
            width: 100,
            height: 100,
            child: FlareActor("animac/coracao.flr", animation: "Pulsar",),
          )
        ],
      ),
    );
  }
}


