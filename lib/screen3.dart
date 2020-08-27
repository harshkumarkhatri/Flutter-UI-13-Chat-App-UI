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
          //     SafeArea(
          //   child: Container(
          //       height: MediaQuery.of(context).size.height,
          //       width: MediaQuery.of(context).size.width,
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(colors: [
          //           Colors.green.shade400,
          //           Colors.green.shade600,
          //         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          //       ),
          //       child:
          //           // AppBar(backgroundColor: Colors.transparent,
          //           //   leading: Icon(Icons.menu),
          //           // ),
          //           Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         // mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Align(
          //             alignment: Alignment.topLeft,
          //             child: GestureDetector(
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Icon(
          //                   Icons.menu,
          //                   size: 28,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Align(alignment: Alignment.topRight,child: Text("Message Detail"))
          //         ],
          //       )),
          // ),
          preferredSize: Size.fromHeight(130)),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // ListView(children: [Container(height:50,color:Colors.black)],),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Container(
            //           width: MediaQuery.of(context).size.width,
            //           color: Colors.pink)
            //     ],
            //   ),
            // ),
            Flexible(
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Container(margin: EdgeInsets.all(5),padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerRight,
                            // color: Colors.purple,
                            child: Container(color: Colors.purple,
                              child: Padding(
                                padding: EdgeInsets.all(
                                  8,
                                ),
                                child: Text("Hey, How you do'in?",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                          Container(height: 30, color: Colors.purple),
                          Container(height: 90, color: Colors.pink),
                        ],
                      ))
                ],
              ),
            ),
            // Divider(indent: 0,endIndent: 0,thickness: 3,),
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
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Colors.grey,
                //   ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    // onSubmitted: (value) {
                    //   onSendMessage(textEditingController.text, 0);
                    // },
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    // controller: textEditingController,
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
                    // focusNode: focusNode,
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
                // onPressed: () => onSendMessage(textEditingController.text, 0),
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
}
