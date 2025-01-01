import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('가장 인기있는'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Expanded(
                child: Image.network('https://picsum.photos/600/900',
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('현재 상영중'),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  10,
                  (index) => Container(
                    width: 100,
                    child: Image.network('https://picsum.photos/600/900'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
