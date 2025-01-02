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
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Animation',
                          style: context.theme.textTheme.labelSmall,
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Adventure',
                          style: context.theme.textTheme.labelSmall,
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Family',
                          style: context.theme.textTheme.labelSmall,
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Comedy',
                          style: context.theme.textTheme.labelSmall,
                        )),
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
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(children: [
                                Text(
                                  '6.949',
                                  style: context.theme.textTheme.bodySmall,
                                ),
                                Text(
                                  '평점',
                                  style: context.theme.textTheme.bodySmall,
                                )
                              ])),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(children: [
                                Text(
                                  '331',
                                  style: context.theme.textTheme.bodySmall,
                                ),
                                Text(
                                  '평점투표수',
                                  style: context.theme.textTheme.bodySmall,
                                )
                              ])),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(children: [
                                Text(
                                  '5466.535',
                                  style: context.theme.textTheme.bodySmall,
                                ),
                                Text(
                                  '인기점수',
                                  style: context.theme.textTheme.bodySmall,
                                )
                              ])),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(children: [
                                Text(
                                  '\$150000000',
                                  style: context.theme.textTheme.bodySmall,
                                ),
                                Text(
                                  '예산',
                                  style: context.theme.textTheme.bodySmall,
                                )
                              ])),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: context.appColor.main),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(children: [
                                Text(
                                  '\$423586580',
                                  style: context.theme.textTheme.bodySmall,
                                ),
                                Text(
                                  '수익',
                                  style: context.theme.textTheme.bodySmall,
                                )
                              ])),
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
}
