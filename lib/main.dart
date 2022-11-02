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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tour of Heroes",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey[300]),
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.blueGrey)),
                    onPressed: () {},
                    child: const Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      selectionColor: Colors.white,
                    )),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey[300]),
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.blueGrey)),
                    onPressed: () {},
                    child: const Text(
                      "Heroes",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      selectionColor: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Top Heroes",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueGrey),
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.black45)),
                          onPressed: () {},
                          child: const Text(
                            "kaiku",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            selectionColor: Colors.white,
                          )),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueGrey),
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.black45)),
                          onPressed: () {},
                          child: const Text(
                            "gokul",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            selectionColor: Colors.white,
                          )),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueGrey),
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.black45)),
                          onPressed: () {},
                          child: const Text(
                            "bony",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            selectionColor: Colors.white,
                          )),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueGrey),
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.black45)),
                          onPressed: () {},
                          child: const Text(
                            "tomba",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            selectionColor: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
