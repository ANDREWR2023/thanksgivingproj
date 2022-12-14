import 'package:flutter/material.dart';
import 'recipebuilder.dart';

void main() {
  runApp(const MyApp());
}

int _selectedIndex = 0;
Recipe r = Recipe.internal[_selectedIndex];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Thanksgiving Recipes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      r = Recipe.internal[_selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/turkey.png'),
                  color: Color.fromARGB(255, 187, 141, 42), size: 50),
              label: 'Turkey',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/drink.png'),
                  color: Color.fromARGB(255, 224, 154, 181), size: 50),
              label: 'Drink',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/cupcake.png'),
                  color: Color.fromARGB(255, 219, 154, 224), size: 50),
              label: 'Dessert',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(children: [
          SizedBox(
              width: 600,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromARGB(255, 138, 216, 158),
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(children: [
                        Image(image: AssetImage(r.firstImage)),
                        Text(r.firstTitle),
                        Text(r.firstRecipe),
                      ])))),
          SizedBox(
              width: 600,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromARGB(255, 138, 216, 158),
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(children: [
                        Image(image: AssetImage(r.secondImage)),
                        Text(r.secondTitle),
                        Text(r.secondRecipe),
                      ])))),
          SizedBox(
              width: 600,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromARGB(255, 138, 216, 158),
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(children: [
                        Image(image: AssetImage(r.thirdImage)),
                        Text(r.thirdTitle),
                        Text(r.thirdRecipe),
                      ]))))
        ])));
  }
}
