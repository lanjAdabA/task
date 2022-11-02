import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task/router/router.gr.dart';

class HeroTile extends StatefulWidget {
  final String name;
  final String sl;
  const HeroTile({super.key, required this.name, required this.sl});

  @override
  State<HeroTile> createState() => _HeroTileState();
}

class _HeroTileState extends State<HeroTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const HeroDesRoute());
      },
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Row(
          children: [
            Container(
                height: 30,
                width: 20,
                color: Colors.blueGrey,
                child: Center(child: Text(widget.sl))),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              color: Colors.white,
              child: Center(child: Text(widget.name)),
            )
          ],
        ),
      ),
    );
  }
}
