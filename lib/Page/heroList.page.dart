import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task/router/router.gr.dart';
import 'package:task/widgets/heroTile.dart';

class HeroListPage extends StatefulWidget {
  const HeroListPage({super.key});

  @override
  State<HeroListPage> createState() => _DashboardState();
}

class _DashboardState extends State<HeroListPage> {
  @override
  List<Map<String, dynamic>> hero = [
    {"name": "kaiku", "sl": "1"},
    {"name": "tomba", "sl": "2"},
    {"name": "bonny", "sl": "3"},
    {"name": "gukul", "sl": "4"},
    {"name": "chaoba", "sl": "5"},
    {"name": "chaobi", "sl": "6"},
    {"name": "naoba", "sl": "7"},
    {"name": "naobi", "sl": "8"},
    {"name": "bemma", "sl": "9"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              const SizedBox(height: 30),
              const Text(
                "My Heroes",
                style: TextStyle(fontSize: 26),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return HeroTile(
                        name: hero[index]["name".toString()],
                        sl: hero[index]["sl".toString()]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
