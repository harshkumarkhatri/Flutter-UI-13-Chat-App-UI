import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:dotted_border/dash_painter.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // smaller light green bottom container
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 119,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                ),
              ),
            ),

            // Big green upper container on the top
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Center(
                      // Row having the search container and the circle
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      right: 12,
                                    ),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    "Search",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        height: 1.2,
                                        letterSpacing: 0.8,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              height: 40,
                              width: MediaQuery.of(context).size.width - 85,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  18,
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.greenAccent[400].withOpacity(0.6),
                              ),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                          ],
                          // Container(height:)
                        ),
                      ),
                    ),
                  ),
                  height: 110,
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
                SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 0,
                  ),
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Icon(Icons.add,
                                    size: 40, color: Colors.white),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text("My Story",
                                  style: TextStyle(color: Colors.grey.shade600))
                            ],
                          ),
                        ),
                        storyItems("Fieece", 10),
                        storyItems("Hilary", 3),
                        storyItems("Fieece", 15),
                        storyItems("Hilary", 1),
                        storyItems("Fieece", 6),
                        storyItems("Hilary", 12),
                        storyItems("Fieece", 3),
                        storyItems("Hilary", 9),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Divider(
                    thickness: 1,
                    height: 2,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        chatItems(
                            "Quiche Hollandaise",
                            "this is some text message which is sent by the user mentioned",
                            1,
                            "15 min",
                            true),
                        chatItems(
                            "Jake Weary",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "32 min",
                            false),
                        chatItems("Ingredia Nutrisha", "this is ", 10, "49 min",
                            true),
                        chatItems(
                            "Piff Jenkins",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "5 hour",
                            true),
                        chatItems(
                            "Nathaneal Down",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "Mon",
                            false),
                        chatItems(
                            "Valentino Morose",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "Tue",
                            true),
                        chatItems(
                            "Quiche Hollandaise",
                            "this is some text message which is sent by the user mentioned",
                            1,
                            "15 min",
                            true),
                        chatItems(
                            "Jake Weary",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "32 min",
                            false),
                        chatItems(
                            "Ingredia Nutrisha",
                            "this is some text message which is sent by the user mentioned",
                            10,
                            "15 min",
                            true),
                        chatItems(
                            "Piff Jenkins",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "5 hour",
                            true),
                        chatItems(
                            "Nathaneal Down",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "Mon",
                            false),
                        chatItems(
                            "Valentino Morose",
                            "this is some text message which is sent by the user mentioned",
                            0,
                            "Tue",
                            true),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width - 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300].withOpacity(0.6),
                          blurRadius: 2,
                          spreadRadius: 2),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 6,
                              width: (MediaQuery.of(context).size.width) / 7,
                              color: Colors.white),
                          Container(
                              height: 6,
                              width: (MediaQuery.of(context).size.width) / 7,
                              color: Colors.white),
                          Container(
                              height: 6,
                              width: (MediaQuery.of(context).size.width) / 7,
                              color: Colors.green.shade600),
                          Container(
                              height: 6,
                              width: (MediaQuery.of(context).size.width) / 7,
                              color: Colors.white)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 12, right: 8),
                            child: Column(
                              children: [
                                Icon(Icons.home, color: Colors.grey.shade400),
                                SizedBox(height: 3),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 12, right: 8),
                            child: Column(
                              children: [
                                Icon(Icons.supervisor_account,
                                    color: Colors.grey.shade400),
                                SizedBox(height: 3),
                                Text(
                                  "Friends",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 12, right: 8),
                            child: Column(
                              children: [
                                Icon(Icons.message,
                                    color: Colors.green.shade600),
                                SizedBox(height: 3),
                                Text(
                                  "Messages",
                                  style: TextStyle(
                                    color: Colors.green.shade600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 12, right: 8),
                            child: Column(
                              children: [
                                Icon(Icons.settings,
                                    color: Colors.grey.shade400),
                                SizedBox(height: 3),
                                Text(
                                  "Settings",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double radius = 240;
  Widget storyItems(name, statusImageItems) {
    double quantStatus =
        (radius - (10 * (statusImageItems - 1))) / statusImageItems;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: DottedBorder(
              color: Colors.black, borderType: BorderType.Circle,
              strokeWidth: 2, dashPattern: [quantStatus, 6],
              child: Center(
                child: Container(
                  height: 47,
                  width: 47,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 2),
          Text(name, style: TextStyle(color: Colors.grey.shade600))
        ],
      ),
    );
  }

  Widget chatItems(
      name, message, unreadMessageCount, unreadMessageTime, online) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(), actionExtentRatio: 0.15,
      secondaryActions: <Widget>[
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.green.shade400, Colors.green.shade700],
            ),
          ),
          child: Icon(
            Icons.share,
            color: Colors.white,
            size: 20,
          ),
        ),
        IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {}),
      ],
      child: Container(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),
                online
                    ? Positioned(
                        right: 2,
                        bottom: 4,
                        child: Container(
                          height: 14,
                          width: 14,
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
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  message.length > 60
                      ? SizedBox(height: 4)
                      : SizedBox(height: 10),
                  Container(
                    width: 200,
                    child: Text(
                      message,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 55,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 12),
                    child: Text(
                      unreadMessageTime,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  unreadMessageCount > 0
                      ? Container(
                          height: 32,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.green[200],
                                  Colors.green[600],
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: Center(
                            child: Text(
                              unreadMessageCount.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
