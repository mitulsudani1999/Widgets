import 'package:flutter/material.dart';
import 'package:flutter_widgets/home.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Safe area'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Expanded'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Room()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Wrap'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Boox()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Pageview'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Pageed()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Sliverlist'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Slive()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Cliprrect'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Clip()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Absorbpointer'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Absorb()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Stack'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Stk()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Positioned'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Positi()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Dismissible'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Dismis()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Mdiaquery'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Media()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Spacer'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Spac()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Richtext'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Rich()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Listview'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Listv()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Tabbar'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tabb()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Drawer widget'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Draw()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Snackbar widget'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Snack()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Divider widget'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Divid()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              height: 80,
              width: 100,
              child: ListTile(
                title: const Text('Imagefiltered widget'),
                contentPadding: const EdgeInsets.all(10),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Imagefil()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
