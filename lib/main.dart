import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int x=4;
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Lottery App")),
          backgroundColor: Colors.purpleAccent.shade100,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text("Lottery Winning Number is 4")),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color:x==4?Colors.purple.shade500: Colors.purple.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child:x==4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all),
                    Text("Congratulations You have Won the Lottery\n Your Number is $x",
                      textAlign: TextAlign.center,)
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error),
                    Text("Better Luck Next Time Your Lottery Number is $x \nTry again",
                      textAlign: TextAlign.center,)
                  ],
                ),

              )
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purpleAccent.shade100,
          child: Icon(Icons.refresh),
          onPressed:(){
            x=random.nextInt(6);
            print(x);
            setState(() {

            });

        },)
      ),
    );

  }
}
