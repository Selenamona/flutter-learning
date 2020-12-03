import 'package:flutter/material.dart';

main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ImageDemo01(imageURL:"https://picsum.photos/200"),
      // home: Scaffold(body: ImageDemo02()),
    );
  }
}

class ImageDemo02 extends StatelessWidget {
  const ImageDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.yellow,
          child: Image.asset("assets/images/juren.jpeg",width: 200,height: 200,fit: BoxFit.cover,)),
    );
  }
}

class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    Key key,
    @required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    // Image.network(imageURL)
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Image(
          image: NetworkImage(imageURL),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
