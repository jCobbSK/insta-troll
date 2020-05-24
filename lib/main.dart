import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './PostPreview.dart';
import './TagInput.dart';
import './CaptionInput.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Troll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(title: 'Insta Troll'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String caption = '';
  List<String> tags = [];

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: getPost()));
  }

  void _setCaption(String _caption) {
    setState(() {
      caption = _caption;
    });
  }

  void _setTags(List<String> _tags) {
    setState(() {
      tags = _tags;
    });
  }

  String getPost() {
    return caption +
        '\n \n \n \n' +
        tags.map((String tag) {
          return '#' + tag;
        }).join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              PostPreview(post: getPost()),
              CaptionInput(onChange: _setCaption),
              TagInput(onChange: _setTags),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _copyToClipboard,
        tooltip: 'Copy to clipboard',
        child: Text("COPY"),
      ),
    );
  }
}
