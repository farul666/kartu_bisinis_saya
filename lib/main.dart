import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void myDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext konteks) {
        return AlertDialog(
          title: Text('Hubungi Kami'),
          content: Text('Hubungi kami di farul123654@gmail.com'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(konteks).pop(),
              child: Text('close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kartu Bisnis Saya'),
        ),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Fahrul Fauji'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5.0, right: 5.0, left: 5.0),
                    child: Text('21201195'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(image: AssetImage('gambarku/palal.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('666 Company'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('gambarku/666.png')),
                  ),
                  ElevatedButton(
                    onPressed: () => myDialog(context),
                    child: Text('Kontak Kami'),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
