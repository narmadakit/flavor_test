import 'package:flutter/material.dart';

import 'appconfig.dart';

void main() {
  AppConfig.create(
      appName: "Dev Flavor Example",
      baseUrl: "https://dwirandyh.com",
      primaryColor: Colors.yellow,
      flavor: Flavor.dev,
      imageLocation: "assets/images_dev/"
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KapilChits Subscriber',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
      ),
      home: const MyHomePage(title: 'Flutter Dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset(AppConfig.shared.imageLocation,fit: BoxFit.fill,),
            Image.asset("${AppConfig.shared.imageLocation}bg.png",fit: BoxFit.fill,),
            SizedBox(height: 10,),
            const Text(
              'You have pushed Dev Flavor',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
