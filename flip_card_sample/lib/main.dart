import 'package:flip_card/flip_card.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flutter Flip Card Demo')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlipCard(
                front: Container(
                  width: 300,
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Front',
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                ),
                back: Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                  child: Center(
                    child: Text('Back',
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlipCard(
                front: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'images/forApp.png', // Replace with your asset path for the front image
                    fit: BoxFit
                        .cover, // Ensures the image covers the container fully
                  ),
                ),
                back: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'images/forAppBack.png', // Replace with your asset path for the back image
                    fit: BoxFit
                        .cover, // Ensures the image covers the container fully
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
