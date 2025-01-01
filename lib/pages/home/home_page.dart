import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Text('가장 인기있는'),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Image.network(
                  'https://picsum.photos/600/900',
                  fit: BoxFit.cover,
                ))
              ],
            )),
      ),
    );
  }
}
