import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task/router/router.gr.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
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
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.grey[300]),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey[300]),
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.blueGrey)),
                    onPressed: () {
                      context.router.push(const DashboardRoute());
                    },
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
                    onPressed: () {
                      context.router.push(const HeroListRoute());
                    },
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
                          onPressed: () {
                            context.router.push(const HeroDesRoute());
                          },
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
                          onPressed: () {
                            context.router.push(const HeroDesRoute());
                          },
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
                          onPressed: () {
                            context.router.push(const HeroDesRoute());
                          },
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
                          onPressed: () {
                            context.router.push(const HeroDesRoute());
                          },
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
