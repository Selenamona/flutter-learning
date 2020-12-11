// import 'package:flutter/material.dart';

// import 'package:scroll_to_index/scroll_to_index.dart';

// class CategoryPage extends StatefulWidget {
//   CategoryPage({Key key}) : super(key: key);

//   _CategoryPageState createState() => _CategoryPageState();
// }

// class _CategoryPageState extends State<CategoryPage> {
//   AutoScrollController controller ;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller = AutoScrollController(
//         viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
//         axis: Axis.vertical
//     );
//   }
//   Future _scrollToIndex() async {

// print("滚动");
//     await controller.scrollToIndex(4, preferPosition: AutoScrollPosition.begin);
//     controller.highlight(4);
//     setState(() {

//     });
//   }

//   Widget _wrapScrollTag({int index, Widget child})
//   => AutoScrollTag(
//     key: ValueKey(index),
//     controller: controller,
//     index: index,
//     child: child,
//     highlightColor: Colors.black.withOpacity(0.1),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 6,
//       child: Scaffold(
//         appBar: AppBar(

//           backgroundColor: Colors.blue,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                 child: TabBar(
//                   isScrollable:true,  //如果多个按钮的话可以滑动
//                   indicatorColor:Colors.yellow,
//                   labelColor:Colors.yellow,
//                   unselectedLabelColor: Colors.white,
//                   unselectedLabelStyle: TextStyle(fontSize: 15),
//                   indicatorSize:TabBarIndicatorSize.label ,
//                   labelStyle:TextStyle(fontSize: 20,color: Colors.purple),

//                   tabs: <Widget>[
//                     Tab(child: Text("推荐0",),),
//                     Tab(child: Text("推荐1",),),
//                     Tab(child: Text("推荐1",),),
//                     Tab(child: Text("推荐1",),),
//                     Tab(child: Text("推荐1",),),
//                     Tab(child: Text("推荐1",),),
//                   ],
//                  ),
//               )
//             ],
//           ),
          
//         ),
//         floatingActionButton: FloatingActionButton(child: Text("浮动"),onPressed: _scrollToIndex,),
//         body:TabBarView(
//           children: <Widget>[
//             ListView(
//               scrollDirection: Axis.vertical,
//               controller: controller,
//                 children: <Widget>[
//                   _wrapScrollTag(index: 0,child: ListTile(
//                       title:Text("第一个tab")
//                   ),),

//                   _wrapScrollTag(index: 1,child: RaisedButton(onPressed: _scrollToIndex,hoverColor:Colors.red,child: Text("跳到第5行"),),),
//                   _wrapScrollTag(index: 2,child: Container(
//                     width: 300,
//                     height: 500,
//                     color: Colors.yellow,
//                     child: IconButton(icon: Image.network("https://picsum.photos/220"),),
//                   ),),
//                   _wrapScrollTag(index: 3,child: ListTile(
//                       title:Text("第一个tab")
//                   ),),
//                   _wrapScrollTag(index: 4,child: ListTile(
//                       title:Text("4第一个tab")
//                   ),),
//                   _wrapScrollTag(index: 5,child: ListTile(
//                       title:Text("第一个tab")
//                   ),),
//                   _wrapScrollTag(index: 6,child: ListTile(
//                       title:Text("第一个tab")
//                   ),),
//                   _wrapScrollTag(index: 7,child: Container(
//                     width: 300,
//                     height: 800,
//                     color: Colors.yellow,
//                   ),),
//                 ],
//               ),
//             ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title:Text("第二个tab")
//                   ),
//                   ListTile(
//                     title:Text("第二个tab")
//                   ),
//                   ListTile(
//                     title:Text("第二个tab")
//                   )
//                 ],
//               ),
//             ListView(
//               children: <Widget>[
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 )
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 )
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 )
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 ),
//                 ListTile(
//                     title:Text("第二个tab")
//                 )
//               ],
//             ),

//           ],
//         )
//       ),
//     );
//   }
// }
