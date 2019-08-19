//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      theme: ThemeData(
//        primaryColor: Colors.black,
//      ),
//      home: Scaffold(
////        appBar: new AppBar(
////          title: new Text("Welcome ro Flutter"),
////        ),
//        body: new Center(
//          child: new RandomWords()),
//      ),
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new RandomWordsState();
//  }
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final _biggerFont = const TextStyle(fontSize: 18.0,color: Color(0xFFFF0000));
//  final _subFont = const TextStyle(fontSize: 12.0,color: Color(0xFF666666));
//
//  @override
//  Widget build(BuildContext context) {
////    final wordPair = new WordPair.random();
////    return new Text(wordPair.asPascalCase);
//    return new Scaffold (
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: (){
//            Navigator.of(context).push(
//              new MaterialPageRoute(
//              builder: (context) {
//                // ignore: missing_return
//                final tiles = _saved.map(
//                      (pair) {
//                    return new ListTile(
//                      title: new Text(
//                        pair.asPascalCase,
//                        style: _biggerFont,
//                      ),
//                      subtitle: new Text(pair.asPascalCase,style: _subFont,),
//                    );
//                  },
//                );
//                final divided = ListTile
//                    .divideTiles(
//                  context: context,
//                  tiles: tiles,
//                ).toList();
//                return new Scaffold(
//                  appBar: new AppBar(
//                    title: new Text('Saved Suggestions'),
//                  ),
//                  body: new ListView(children: divided),
//                );
//              },
//            ));
//          }),
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(padding: const EdgeInsets.all(16.0),
//        itemBuilder: (context, i) {
//          if (i.isOdd) return new Divider();
//          final index = i ~/ 2;
//          if (index >= _suggestions.length) {
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        }
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      subtitle: new Text(
//        pair.asPascalCase,
//        style: _subFont,
//      ),
//      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,),
//      onTap: (){
//        setState(() {
//          Fluttertoast.showToast(
//              msg: "click item",
//              toastLength: Toast.LENGTH_SHORT,
//              gravity: ToastGravity.CENTER,
//              timeInSecForIos: 1,
//              backgroundColor: Color(0xff90f781),
//              textColor: Color(0xff666666)
//          );
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//  }
//
//}
//
//
//
//

















