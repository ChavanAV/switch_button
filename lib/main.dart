import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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

  bool v1=false;
  bool v2=false;
  void onchange1(bool val){
    setState(() {
      v1=val;
    });
  }
  void onchange2(bool val){
    setState(() {
      v2=val;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
        title: Text("Hi"),
       centerTitle: true,
       backgroundColor: Colors.teal,
     ),
     body: Center(
       child: Column(
         children: [
           Switch(value: v1, onChanged: onchange1),
           SwitchListTile(
               value: v2,
               onChanged: onchange2,
             title: Text("Hello"),
             controlAffinity: ListTileControlAffinity.platform,
             activeColor: Colors.red,
             subtitle: Text("Hi"),
             activeTrackColor: Colors.amberAccent,
             selected: EditableText.debugDeterministicCursor,
             hoverColor: Colors.blue,
             tileColor: Colors.teal,
           ),
         ],
       ),
     ),
   );
  }
}
