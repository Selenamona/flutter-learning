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
      itemExtent: 120,
      delegate:
          new SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.5, color: Colors.grey[350]),
              ),
            ),
            child: new Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(userList[index]['imageUrl'])),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userList[index]['carName'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 6),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: userList[index]['buyCarDateText'] + ' / ',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[600])),
                        TextSpan(
                            text: userList[index]['drivingMileageText'] + ' / ',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[600])),
                        TextSpan(
                            text: userList[index]['cityName'],
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[600]))
                      ])),
                    ),
                    Text(
                      userList[index]['displaypriceText'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              ],
            ));
      }, childCount: 20),
    );
  }
}
