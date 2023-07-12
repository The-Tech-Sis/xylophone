import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());
// the Arrow syntax, also known as arrow function or
// fat arrow is used only when the argument inside
// the function is only a single line of quotes.
// e.g
//void main() => runApp(myApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void playList(int soundNumber) {
    final player = AudioCache();
    player.load('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNum, required Color color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playList(soundNum);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(soundNum: 1, color: Colors.red),
            buildKey(soundNum: 2, color: Colors.pink),
            buildKey(soundNum: 3, color: Colors.purple),
            buildKey(soundNum: 4, color: Colors.deepPurple),
            buildKey(soundNum: 5, color: Colors.indigo),
            buildKey(soundNum: 6, color: Colors.blue),
            buildKey(soundNum: 7, color: Colors.lightBlue),
            buildKey(soundNum: 1, color: Colors.cyan),
            buildKey(soundNum: 2, color: Colors.teal),
            buildKey(soundNum: 3, color: Colors.green),
            buildKey(soundNum: 4, color: Colors.lightGreen),
            buildKey(soundNum: 5, color: Colors.lime),
            buildKey(soundNum: 6, color: Colors.yellow),
            buildKey(soundNum: 7, color: Colors.amber),
            buildKey(soundNum: 1, color: Colors.orange),
            buildKey(soundNum: 2, color: Colors.deepOrange),
            buildKey(soundNum: 3, color: Colors.brown),
            buildKey(soundNum: 4, color: Colors.grey),
            buildKey(soundNum: 5, color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
