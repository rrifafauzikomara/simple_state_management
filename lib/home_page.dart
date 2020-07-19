import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isRightClicked;
  var _isLeftClicked;

  @override
  void initState() {
    super.initState();
    _isRightClicked = false;
    _isLeftClicked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Simple State Management'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text('Left'),
              textColor: Colors.white,
              color: _isLeftClicked ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _isLeftClicked = true;
                  _isRightClicked = false;
                });
              },
            ),
            SizedBox(width: 10),
            RaisedButton(
              child: Text('Right'),
              textColor: Colors.white,
              color: _isRightClicked ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _isRightClicked = true;
                  _isLeftClicked = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
