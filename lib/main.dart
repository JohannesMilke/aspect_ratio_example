import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Aspect Ratio';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: AspectRatio(
          aspectRatio: 4 / 3,
          child:  Image.network(
              'https://www.rd.com/wp-content/uploads/2017/07/01-birth-month-If-You-Were-Born-In-Summer-This-Is-What-We-Know-About-You_644740429-icemanphotos.jpg',
              fit: BoxFit.cover,
            ),
        ),
      );
}
