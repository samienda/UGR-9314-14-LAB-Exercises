import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => (runApp(const MyApp()));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'BARDI';
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(
                      width: 200,
                      child: SearchBar(
                        hintText: 'search',
                      ),
                    ),
                    Row(children: [
                      Icon(Icons.shopping_cart),
                      Icon(Icons.notifications)
                    ])
                  ]),
            ),
          ),
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection2(),
              DescriptionSection(),
              VariantSection(),
              BottumSection(),
            ],
          ),
        ));
  }
}

class ImageSection2 extends StatelessWidget {
  const ImageSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset('assets/EDVAC.jpeg'),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('\$8.6'), Icon(Icons.heart_broken)],
          ),
          Text(
              'dfjadsjfajfdoajsdfjasidfjaisddfjisdfdsjdjdsfjiasdfjsdjflsddjflsdslsdfklsddjsldjflds'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [Icon(Icons.star), Text('50.(354)')],
              ),
              Text('540 sale'),
              Row(
                children: [Icon(Icons.location_city), Text('addis absa')],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class VariantSection extends StatelessWidget {
  const VariantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('variants'),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('size : Xs'),
                  Row(
                    children: [
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('cOLOR : Xs'),
                  Row(
                    children: [
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                      Chip(
                        label: Text('XS'),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class BottumSection extends StatelessWidget {
  const BottumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.comment),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 400,
            child: SearchBar(
              hintText: 'add to shopping car',
            ),
          )
        ],
      ),
    );
  }
}
