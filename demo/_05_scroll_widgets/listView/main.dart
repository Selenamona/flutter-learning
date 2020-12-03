import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: Container(
        height: 600,
        child: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext ctx, int index) {
            return Text(
              "Hello World: $index",
              style: TextStyle(fontSize: 20),
            );
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return Divider(
              color: Colors.blue,
              height: 30,
              indent: 30,
              endIndent: 30,
              thickness: 1,
            );
          },
        ),
      ),
    );
  }
}

class ListViewDemo2 extends StatelessWidget {
  const ListViewDemo2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            "Hello World: $index",
            style: TextStyle(fontSize: 20,color: Colors.red),
          );
        },
      ),
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
//        scrollDirection: Axis.horizontal,
//        reverse: true,
//        itemExtent: 100,
        children: List.generate(100, (index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人${index + 1}"),
            subtitle: Text("联系人电话号码:18866665555"),
          );
        }),
      ),
    );
  }
}
