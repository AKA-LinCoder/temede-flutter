import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temede_interview/pop_up_men.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '特么的面试题',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(right: 100, left: 100),
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xFFF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              // SizedBox(
              //   width: widget.height,
              //   height: widget.height,
              //   child: Icon(Icons.search, size: 22, color: Color(0xFF999999)),
              // ),
              Expanded(
                child: TextField(
                  // autofocus: widget.autoFocus,
                  // focusNode: _focusNode,
                  // controller: _controller,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText:  '请输入关键字',
                    hintStyle: TextStyle(fontSize: 15, color: Color(0xFF999999)),
                  ),
                  style: TextStyle(fontSize: 15, color: Color(0xFF333333), height: 1.3),
                  textInputAction: TextInputAction.search,
                  onTap: (){},
                  onSubmitted:(text){},
                ),
              ),
              // _suffix(),
            ],
          ),
        ),
        actions: const [
           PopUpMen(
            menuList: [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.person,
                  ),
                  title: Text("个人信息"),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.bag,
                  ),
                  title: Text("My Bag"),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: Text("Settings"),
              ),
              PopupMenuItem(
                child: Text("About Us"),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text("Log Out"),
                ),
              ),
            ],
            icon: SizedBox(
              // width: 100,
              // height: 100,
              child: CircleAvatar(
                // maxRadius: ,
                // minRadius: 100,
                // radius: 120,
                backgroundImage: NetworkImage("https://img1.baidu.com/it/u=1291595622,2723528460&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500",),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              width: 300,
              color: Colors.grey,
            ),
            Expanded(child: Container()),
            Container(
              width: 300,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
