import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network('https://picsum.photos/600/900'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Moana 2',
                          style: context.theme.textTheme.bodyLarge,
                        )),
                    Spacer(),
                    Text(
                      '2024-11-27',
                      style: context.theme.textTheme.bodySmall,
                    )
                  ],
                ),
                Text(
                  'The ocean is calling them back.',
                  style: context.theme.textTheme.bodySmall,
                ),
                Text(
                  '100분',
                  style: context.theme.textTheme.bodySmall,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ))),
                Row(
                  spacing: 5,
                  children: [
                    categoryIcon(context, 'Animation'),
                    categoryIcon(context, 'Adventure'),
                    categoryIcon(context, 'Family'),
                    categoryIcon(context, 'Comedy'),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ))),
                Text(
                    "In Ancient Polynesia, when a terrible curse incurred by Maui reaches an impetuous Chieftain's daughter's island, she answers the Ocean's call to seek out the demigod to set things right.",
                    style: context.theme.textTheme.bodySmall),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ))),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '흥행정보',
                      style: context.theme.textTheme.labelLarge,
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        children: [
                          movieInfoIcon(context, '6.949', '평점'),
                          movieInfoIcon(context, '331', '평점투표수'),
                          movieInfoIcon(context, '5466.535', '인기점수'),
                          movieInfoIcon(context, '\$150000000', '예산'),
                          movieInfoIcon(context, '\$423586580', '수익'),
                        ],
                      )),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(spacing: 10, children: [
                      Container(
                        height: 75,
                        color: context.appColor.background,
                        child: Image.network(
                          'https://picsum.photos/400/200',
                        ),
                      ),
                      Container(
                        height: 75,
                        color: context.appColor.background,
                        child: Image.network(
                          'https://picsum.photos/400/200',
                        ),
                      ),
                      Container(
                        height: 75,
                        color: context.appColor.background,
                        child: Image.network(
                          'https://picsum.photos/400/200',
                        ),
                      ),
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container movieInfoIcon(BuildContext context, String rating, String name) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Text(
            rating,
            style: context.theme.textTheme.bodySmall,
          ),
          Text(
            name,
            style: context.theme.textTheme.bodySmall,
          )
        ]));
  }

  Container categoryIcon(BuildContext context, String category) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(50)),
        child: Text(
          category,
          style: context.theme.textTheme.labelSmall,
        ));
  }
}
