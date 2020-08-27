import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Message Detail"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent[700],
            flexibleSpace: Positioned(
                bottom: 45,
                left: 15,
                child: Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("Mahi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Active",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    )
                  ],
                ))),
          ),
          preferredSize: Size.fromHeight(130)),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          messageFormatting("Hey how are you", "me"),
                          messageFormatting("ia ma fine", "not me"),
                          messageFormatting(
                              "how are the things going on? it has been so long we have met each other. i was thinking of calling you up but your phone was unreachable so i dropped the idea",
                              "me"),
                          messageFormatting("yes", "me"),
                          messageFormatting(
                              "this is some very large text message which is not being sent by me to whomesoever it may concern",
                              "not me"),
                          messageFormatting("how do you do", "me"),
                          messageFormatting(
                              "i am fine. what about you", "not me")
                        ],
                      ))
                ],
              ),
            ),
            buildInput()
          ],
        ),
      ),
    );
  }

  Widget buildInput() {
    return Container(
      child: Row(
        children: <Widget>[
          // Edit text
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.camera_alt, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Type your message...',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Button send message
          Material(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(Icons.send, color: Colors.greenAccent),
                color: Colors.red,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
          color: Colors.white),
    );
  }

  Widget messageFormatting(message, sentBy) {
    print(message.length);
    return sentBy == "me"
        ? Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      15,
                    ),
                    child: Container(
                      width: message.length > 100 ? 160 : null,
                      child: Text(message,
                          overflow: TextOverflow.clip,
                          softWrap: true,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ))
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18),
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      15,
                    ),
                    child: Container(
                      width: message.length > 80 ? 160 : null,
                      child: Text(message,
                          overflow: TextOverflow.clip,
                          softWrap: true,
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
