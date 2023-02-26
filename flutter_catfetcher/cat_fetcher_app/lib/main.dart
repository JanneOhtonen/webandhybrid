import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random Images',
      home: MyHomePage(title: 'Not used now'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageUrl =
      'https://picsum.photos/400/600'; // API returns a random cat image

  void _resetCat() {
    setState(
      () {
        imageUrl =
            'https://picsum.photos/400/600/?v=${Random().nextInt(10000000)}'; // sad hack to prevent url (and image) caching
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl,
              width: double.infinity, // max width
              height: MediaQuery.of(context).size.height / 1.7,
              // height: 500, // alternative fixed height
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(90),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: _resetCat,
                child: Text(
                  "Fetch a new image!",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
