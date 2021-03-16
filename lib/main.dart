import 'package:flutter/material.dart';
import 'atlaswidget.dart';
import 'quizwidget.dart';
import 'package:provider/provider.dart';
import 'atlas.dart';
import 'countrygatherer.dart';

void main() {
  runApp(ChangeNotifierProvider(child: MyApp(), create: (context) => Atlas()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  void _handleTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _addCountry(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Consumer<Atlas>(
                builder: (context, atlas, child) =>
                    CountryGatherer(atlas: atlas))));
  }

  int selectedIndex = 0;
  List<Widget> screens = [
    Consumer<Atlas>(
        builder: (context, atlas, child) => AtlasWidget(atlas: atlas)),
    Consumer<Atlas>(
        builder: (context, atlas, child) => QuizWidget(atlas: atlas)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Atlastravaganza'),
          leading: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _addCountry(context);
              })),
      body: screens[selectedIndex], // Text('This app needs work!'),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _handleTap,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(label: 'Atlas', icon: Icon(Icons.map)),
            BottomNavigationBarItem(
                label: 'Quiz', icon: Icon(Icons.question_answer))
          ]),
    );
  }
}
