import 'package:flutter/cupertino.dart';

class PriceList extends StatefulWidget {
  @override
  _PriceListState createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  var pricelable = [
    {
      "id": 1,
      "text": "5万以下",
      "lowPrice": "0",
      "highPrice": "5",
      "carLevel": null
    },
    {
      "id": 2,
      "text": "5-10万",
      "lowPrice": "5",
      "highPrice": "10",
      "carLevel": null
    },
    {
      "id": 3,
      "text": "10-15万",
      "lowPrice": "10",
      "highPrice": "15",
      "carLevel": null
    },
    {
      "id": 4,
      "text": "15万以上",
      "lowPrice": "15",
      "highPrice": null,
      "carLevel": null
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 列数
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 44.0,
          childAspectRatio: 4,
        ),
        delegate: new SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return new Text(pricelable[index]['text']);
          },
          childCount: pricelable.length,
        ));
  }
}
