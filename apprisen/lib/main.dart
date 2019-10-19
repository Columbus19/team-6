import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: HomeScreen(),      
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 28.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('AppRisen', style: TextStyle(color: Colors.black)),
      centerTitle: true,
      backgroundColor: Colors.white12,
      ),
      //body: _buildHomeScreen(),
      body: Container(
        //Add box decoration
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(          
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.green),            
              child: Padding(padding: const EdgeInsets.only(left:175.0,right:175.0,top:500.0, bottom:0.0),
        ),
      ),
    ),
    ),
      floatingActionButton: FloatingActionButton.extended (
        icon: Icon(Icons.message, color: Colors.green,),
        label: Text("Chat", style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
        //mini: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        elevation: 10,
        highlightElevation: 20,
      ),
    );
  }

  Widget _buildHomeScreen() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          // var _suggestions = [];
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        // style: _biggerFont,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}



// check this link
// https://newcodingera.com/login-signup-pages-in-flutter/