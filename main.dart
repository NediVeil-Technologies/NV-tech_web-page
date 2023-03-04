// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
void main() {
  usePathUrlStrategy();+
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> titles = [
    "Home",
    "About",
    "Services",
    "Contact Us",
  ];
  List<Color> colours = [
    Colors.orange,
    Colors.blue,
    Colors.orange,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "NediVeil Technologies",
              ),
              if (MediaQuery.of(context).size.width > 600)
                Row(
                  children: [
                    Text('Home'),
                    SizedBox(
                      width: 15,
                    ),
                    Text('About'),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Services'),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Contact Us'),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Container(
              color: colours[index],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (index % 2 == 0)
                        Container(
                          height: MediaQuery.of(context).size.height * .9,
                          width: MediaQuery.of(context).size.width * .4,
                          child: FittedBox(
                            child: Image.network(
                              "data:image/jpeg;base64,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",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * .8,
                          width: MediaQuery.of(context).size.width * .4,
                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // SizedBox(
                              //   height: 20,
                              // ),
                              Text(
                                titles[index],
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: .5,
                                indent: 20,
                              ),
                              Text("lorem Epsum"),
                            ],
                          ),
                        ),
                      ),
                      if (index % 2 != 0)
                        Container(
                          height: MediaQuery.of(context).size.height * .9,
                          width: MediaQuery.of(context).size.width * .4,
                          child: FittedBox(
                            child: Image.network(
                              "data:image/jpeg;base64,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",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    ],
                  ),
                  // Divider(
                  //   color: Colors.black,
                  //   thickness: 2,
                  //   indent: 20,
                  // ),
                ],
              ),
            );
          },
        ),
        drawer: MediaQuery.of(context).size.width < 600
            ? Drawer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onPressed: null,
                    ),
                    ElevatedButton(
                      child: Text('About'),
                      onPressed: null,
                    ),
                    ElevatedButton(
                      child: Text('Services'),
                      onPressed: null,
                    ),
                    ElevatedButton(
                      child: Text('Contact Us'),
                      onPressed: null,
                    )
                  ],
                ),
              )
            : null);
  }
}
