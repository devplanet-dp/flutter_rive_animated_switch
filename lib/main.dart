import 'package:flutter/material.dart';
import 'package:flutter_rive_animated_switch/day_night_switch.dart';

void main() => runApp(MyApp());

bool isDark = true;


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Rive Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: isDark ? Brightness.dark : Brightness.light
      ),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Container(
            child: DayNightSwitch(
              height: 75.0,
              width: 95.0,
              onSelection: (isCheck){
                setState(() {
                  isDark =! isCheck;
                });
              },
            ),
          ),
        ),
      ),

    );
  }

}



