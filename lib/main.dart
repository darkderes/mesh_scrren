import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:mesh/mesh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Transform.rotate(angle: math.pi,
        child: Center(
          child: OMeshGradient(
            tessellation: 128,
            mesh: OMeshRect(width: 3,
             height: 3,
             backgroundColor: Colors.white, 
             vertices: [
              (1.0, 0.5).v,(1.0, 0.5).v,(1.0, 0.0).v.bezier(south:(1.0, 0.0).v, west: (1.0, 0.0).v),
              (0.0, 0.25).v,(0.25, 0.5).v,(0.5, 0.0).v,
              (0.0, 1.0).v,(0.5, 1.0).v,(1.0, 1.0).v,
                          ],
             colors: 
              const [
                Colors.purple,Colors.red,Colors.purple,
                Colors.pink,Colors.blue,Colors.purple,
                Colors.indigo,Colors.purple,Colors.teal,
              ],
             ),
          ),
        ),    
      )
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
