import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool showTime = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 129,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(
                      18,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: SafeArea(
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,
                                      color: Colors.white),
                                  SizedBox(width: 5),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey[300],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        bottom: 4,
                                        child: Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 1,
                                                  color: Colors.white,
                                                  spreadRadius: 2)
                                            ],
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Quiche Hollandaise",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          "Active Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 90),
                                  Icon(Icons.info, color: Colors.white)
                                ],
                              ),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.green.shade400,
                          Colors.green.shade700,
                        ],
                      ),
                    ),
                  ),
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
            ],
          )),
    );
  }

  Widget buildInput() {
    return Container(
      child: Row(
        children: <Widget>[
          // Edit text
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Container(
                // color: Colors.red,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300].withOpacity(0.6),
                        blurRadius: 2,
                        spreadRadius: 4)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(Icons.attach_file, color: Colors.grey),
                      SizedBox(width: 4),
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                          decoration: InputDecoration(
                            hasFloatingPlaceholder: false,
                            border: InputBorder.none,
                            hintText: 'Type your message...',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.send, color: Colors.greenAccent[700]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Button send message
          // Material(
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 8.0),
          //     child: IconButton(
          //       icon: Icon(Icons.send, color: Colors.greenAccent),
          //       color: Colors.red,
          //     ),
          //   ),
          //   color: Colors.white,
          // ),
        ],
      ),
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
          // border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
          color: Colors.white),
    );
  }

  Widget messageFormatting(message, sentBy) {
    print(message.length);
    return sentBy == "me"
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showTime == false ? showTime = true : showTime = false;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),
              showTime
                  ? Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        "01:15 PM",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    )
                  : Container(),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showTime == false ? showTime = true : showTime = false;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              bottomLeft: Radius.circular(18),
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
                ),
              ),
              showTime
                  ? Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Text(
                        "01:15 PM",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
  }
}
