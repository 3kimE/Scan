import 'package:flutter/material.dart';

import 'package:scan/screens/readqr.dart';
import 'package:scan/screens/scanqr.dart';
void main (){
  runApp(Home());
}


class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {





  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(


          appBar: AppBar(
            title: Text("HFD-SCAN"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.document_scanner_outlined, color: Colors.red),
                  text: 'Scanner',
                ),
                Tab(
                  icon: Icon(Icons.create_new_folder, color: Colors.red),
                  text: 'Creat',
                ),


              ],
            ),
            backgroundColor: Colors.black,
            toolbarHeight: 60,

          ),
          body: Container(

            child: TabBarView(
              children: [
                ScanScreen(),
                CreateScreen(),

              ],
            ),
          )),
    );
  }


}









