import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; //gotta add package in yami

void main() {
  runApp(RandomWordGenerator());
}

class RandomWordGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to the Random Word Generator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Word Generator"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              wordPair = WordPair.random();
            });
          },
          child: Text("Generate"),
        ),
      ),
      body: Center(
        child:
            Text(wordPair.asPascalCase), //every word begins with capital letter
      ),
    );
  }
}
