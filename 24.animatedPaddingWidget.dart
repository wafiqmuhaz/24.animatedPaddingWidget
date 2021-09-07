import "package:flutter/material.dart";

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Padding"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 20;
                          });
                        },
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 10;
                          });
                        },
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 30;
                          });
                        },
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 0;
                          });
                        },
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
