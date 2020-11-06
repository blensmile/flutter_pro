import 'package:flutter/material.dart';

class DemoPopupMenuButton extends StatefulWidget {
  @override
  _DemoPopupMenuButtonState createState() => _DemoPopupMenuButtonState();
}

class _DemoPopupMenuButtonState extends State<DemoPopupMenuButton> {
  Key key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("九点下班"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            key: key,
            child: Text("showMenu"),
            onPressed: () {
              showMenu(
                context: context,
                // position:RelativeRect.fromLTRB(0.0,(context.findRenderObject() as RenderBox).localToGlobal(Offset.zero).dx, 0.0,0.0),//RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
                //TODO 这个坑怎么填
                position: RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
                items: <PopupMenuItem>[
                  PopupMenuItem(child: Text("Item1")),
                  PopupMenuItem(child: Text("Item2")),
                  PopupMenuItem(child: Text("Item3")),
                ],
              );
            },
          ),
          PopupMenuButton(
            /// context就是 PopupMenuButton
            itemBuilder: (context) {
              return <PopupMenuEntry>[
                PopupMenuItem(child: Text("Item1")),
                PopupMenuItem(child: Text("Item1")),
                PopupMenuItem(child: Text("Item1")),
                PopupMenuItem(child: Text("Item1")),
              ];
            },
            child: Text("PopupMenuButton"),
            offset: Offset(0, 30),
          ),
        ],
      ),
    );
  }
}
