import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(body: ImageExtensionDemo(imageURL: "https://picsum.photos/200/300",)),
      home: Scaffold(body: TextFieldDemo(),),
    );
  }
}

class TextFieldDemo extends StatelessWidget {

  final usernameTextEditController = TextEditingController(text: "默认文字");
  final passwordTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 300,
        child: Theme(
          data: ThemeData(
              primaryColor: Colors.red
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: usernameTextEditController,
                  decoration: InputDecoration(
                      labelText: "username",
                      icon: Icon(Icons.people),
                      hintText: "请输入用户名",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.red[100]
                  ),
                  onChanged: (value) {
                    print("onChange:$value");
                  },
                  onSubmitted: (value) {
                    print("onSubmitted:$value");
                  },
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: passwordTextEditController,
                  decoration: InputDecoration(
                    labelText: "password",
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: FlatButton(
                    child: Text("登 录", style: TextStyle(fontSize: 20, color: Colors.white),),
                    color: Colors.blue,
                    onPressed: () {

                      // 1.获取用户名和密码
                      final username = usernameTextEditController.text;
                      final password = passwordTextEditController.text;
                      print("账号:$username 密码:$password");
                      usernameTextEditController.text = "";
                      passwordTextEditController.text = "";
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


