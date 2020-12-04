import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LongList extends StatefulWidget {
  @override
  _LongListState createState() => _LongListState();
}

class _LongListState extends State<LongList> {
  var userList = [];

  @override
  initState() {
    super.initState();
    init();
  }

  init() async {
    var res = await getJson();
    setState(() {
      userList = json.decode(res);
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString('mock/home/listView.json');
  }

  Widget build(BuildContext context) {
    return new SliverFixedExtentList(
      itemExtent: 100,
      delegate:
          new SliverChildBuilderDelegate((BuildContext context, int index) {
        return new Row(
          children: [
            Image.network(userList[index]['imageUrl']),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userList[index]['carName'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(text: userList[index]['buyCarDateText'] + ' / '),
                  TextSpan(text: userList[index]['drivingMileageText'] + ' / '),
                  TextSpan(text: userList[index]['cityName'])
                ])),
                Text(userList[index]['displaypriceText'])
              ],
            )),
          ],
        );
      }, childCount: 20),
    );
  }
}
