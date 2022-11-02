import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class HeroDesPage extends StatefulWidget {
  const HeroDesPage({super.key});

  @override
  State<HeroDesPage> createState() => _DashboardState();
}

class _DashboardState extends State<HeroDesPage> {
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
            // Container(
            //   padding: const EdgeInsets.all(8),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: const [
            //           Text(
            //             "Top Heroes",
            //             style: TextStyle(fontSize: 26),
            //           ),
            //         ],
            //       ),
            //       const SizedBox(height: 30),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           ElevatedButton(
            //               style: const ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStatePropertyAll(Colors.blueGrey),
            //                   overlayColor:
            //                       MaterialStatePropertyAll(Colors.black45)),
            //               onPressed: () {},
            //               child: const Text(
            //                 "kaiku",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                 ),
            //                 selectionColor: Colors.white,
            //               )),
            //           ElevatedButton(
            //               style: const ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStatePropertyAll(Colors.blueGrey),
            //                   overlayColor:
            //                       MaterialStatePropertyAll(Colors.black45)),
            //               onPressed: () {},
            //               child: const Text(
            //                 "gokul",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                 ),
            //                 selectionColor: Colors.white,
            //               )),
            //           ElevatedButton(
            //               style: const ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStatePropertyAll(Colors.blueGrey),
            //                   overlayColor:
            //                       MaterialStatePropertyAll(Colors.black45)),
            //               onPressed: () {},
            //               child: const Text(
            //                 "bony",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                 ),
            //                 selectionColor: Colors.white,
            //               )),
            //           ElevatedButton(
            //               style: const ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStatePropertyAll(Colors.blueGrey),
            //                   overlayColor:
            //                       MaterialStatePropertyAll(Colors.black45)),
            //               onPressed: () {},
            //               child: const Text(
            //                 "tomba",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                 ),
            //                 selectionColor: Colors.white,
            //               )),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Kaiku ",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                          children: [TextSpan(text: "details!")])),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "id : ",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: " 01",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal)),
                        ]),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "name : ",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 30,
                          width: 80,
                          padding: const EdgeInsets.all(4),
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.blue),
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey[300]),
                      ),
                      onPressed: () {
                        context.router.pop();
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        selectionColor: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
