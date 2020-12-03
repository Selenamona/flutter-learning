import 'package:flutter/material.dart';
import './swiper.dart';
import './grid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [HomeSwiper(), HomeGrid()],
        ),
      ),
    );
  }
}
