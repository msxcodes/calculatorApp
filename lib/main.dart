import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

final no1controller = TextEditingController();
final no2controller = TextEditingController();
num res = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        body: Container(
            color: Colors.black87,
            padding: EdgeInsets.only(left: 20, right: 20, top: 120),
            child: Column(children: [
              TextField(
                cursorColor: Colors.orange,
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: no1controller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: no2controller,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Enter a number',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    )),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Results : $res",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        res = int.parse(no1controller.text.toString()) +
                            int.parse(no2controller.text.toString());
                      });
                    },
                    child: Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        res = int.parse(no1controller.text.toString()) -
                            int.parse(no2controller.text.toString());
                      });
                    },
                    child: Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        res = int.parse(no1controller.text.toString()) *
                            int.parse(no2controller.text.toString());
                      });
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        res = int.parse(no1controller.text.toString()) /
                            int.parse(no2controller.text.toString());
                      });
                    },
                    child: Icon(
                      CupertinoIcons.divide,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ])));
  }
}
