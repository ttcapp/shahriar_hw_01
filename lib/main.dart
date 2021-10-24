import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText1 = "Button One ";
bool imgvsblty1 = false;
String imgSrc1 = "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("First App"),
      ),
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.network(imgSrc1),
                      height: 150,
                      width: 200,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                     // / ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.network(imgSrc1),
                      height: 150,
                      width: 200,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                      // / ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.network(imgSrc1),
                      height: 150,
                      width: 200,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                      // / ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.network(imgSrc1),
                      height: 150,
                      width: 200,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                      // / ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                child: Text(btnText1),
                onPressed: (){
              setState(() {
                imgvsblty1 = true;
                btnText1= "Button pressed";
              });
            },
                ),
           SizedBox(
             height: 20,
           ),
           Visibility(
             visible: imgvsblty1,
             child: Container(
               child: Image.network(imgSrc1),height: 150,width: 200,
             ),
           ),
          ],

        ),

      ),
    );
  }
}


