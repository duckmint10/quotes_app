import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List stuffs = [
    "Life is not fair, get used to it! – Bill Gates",
    "Life is like a coin. You can spend it anyway you wish, but you only spend it once. – Lillian Dickson.",
    "It does not do to dwell on dreams and forget to live. – J.K. Rowling, Harry Potter and the Sorcerer’s Stone",
    "Everything you can imagine is real. – Pablo Picasso",
    "Getting ahead in a difficult profession requires avid faith in yourself. That is why some people with mediocre talent, but with great inner drive, go so much further than people with vastly superior talent. – Sophia Loren",
    "Accept responsibility for your life. Know that it is you who will get you where you want to go, no one else. – Les Brown",
    "Success always comes to those who dare to act and seldom comes close to those who are too coward to take the consequences. – Jawaharlal Nehru",
    "It’s better to cross the line and suffer the consequences than to just stare at the line for the rest of your life. – Anonymous",
    "Imaging is danger! Be careful!!!!!!!! - Dao Thi Ngoc Han HUCE"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(17.0)),
                  child: Center(
                    child: Text(
                      stuffs[_index % stuffs.length],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.backpack),
                label: Text(
                  "Quote Of Day",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                color: Colors.lightGreen.shade600,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
