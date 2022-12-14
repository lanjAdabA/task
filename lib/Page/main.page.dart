import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task/router/router.gr.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _DashboardState();
}

class _DashboardState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}
