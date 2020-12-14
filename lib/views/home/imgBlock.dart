import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImgBlock extends StatefulWidget {
  @override
  _ImgBlockState createState() => _ImgBlockState();
}

class _ImgBlockState extends State<ImgBlock> {
  var lists = [];
  @override
  void initState() {
    super.initState();
    this.init();
  }

  init() async {
    var ls = await getJson();
    setState(() {
      lists = json.decode(ls);
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString('mock/home/rowList.json');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 160.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lists.length,
        itemBuilder: (context, index) {
          return Container(
            width: 125,
            margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFeeeeee), width: 1),
                borderRadius: BorderRadius.circular((5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(95, 101, 110, .1),
                      offset: Offset(3, 3),
                      blurRadius: 4.0)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(5)),
                    child: Image.network(lists[index]['imageUrl'])),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    child: Text(
                      lists[index]['brandName'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: Color(0xFF111111)),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: lists[index]['buyCarDateText'] +
                              '/' +
                              lists[index]['drivingMileageText'],
                          style: TextStyle(
                              fontSize: 10, color: Color(0xFF9999999)))
                    ]))),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Text(
                      lists[index]['displayPrice'],
                      style: TextStyle(fontSize: 10, color: Color(0xFFf50013)),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
