import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',
      home: Scaffold(
        backgroundColor: Color(0xffe9edf3),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xfffefefe),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            )
          ],
          title: Text(
            "TODO",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "All TODO Tasks",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // container
            // for multiple containers
            for (int i = 0; i < 20; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xfffefefe),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Make Youtube Vidio at 3:30 PM .Birthday Trip",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
