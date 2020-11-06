import 'package:flutter/material.dart';
import 'package:flutter_pro/awsome/demo_inherited_widget.dart';
import 'package:flutter_pro/awsome/state/demo_state_provider.dart';
import '../../model/post.dart';
import 'package:flutter_pro/awsome/demo_backdrop_filter.dart';
import 'package:flutter_pro/awsome/demo_bottom_navigation_bar.dart';
import 'package:flutter_pro/awsome/demo_bottom_sheet.dart';
import 'package:flutter_pro/awsome/demo_button.dart';
import 'package:flutter_pro/awsome/demo_clip.dart';
import 'package:flutter_pro/awsome/demo_clip_rrect.dart';
import 'package:flutter_pro/awsome/demo_column.dart';
import 'package:flutter_pro/awsome/demo_container.dart';
import 'package:flutter_pro/awsome/demo_custom_painter.dart';
import 'package:flutter_pro/awsome/demo_custom_scroll_view.dart';
import 'package:flutter_pro/awsome/demo_custom_time_picker.dart';
import 'package:flutter_pro/awsome/demo_drawer.dart';
import 'package:flutter_pro/awsome/demo_expanded.dart';
import 'package:flutter_pro/awsome/demo_inherited_widget.dart';
import 'package:flutter_pro/awsome/demo_lifecycle.dart';
import 'package:flutter_pro/awsome/demo_modal_bottom_sheet.dart';
import 'package:flutter_pro/awsome/demo_navigation_rail.dart';
import 'package:flutter_pro/awsome/demo_offstage.dart';
import 'package:flutter_pro/awsome/demo_pop_menu_button.dart';
import 'package:flutter_pro/awsome/demo_refresh_indicator.dart';
import 'package:flutter_pro/awsome/demo_refresh_load_more.dart';
import 'package:flutter_pro/awsome/demo_row.dart';
import 'package:flutter_pro/awsome/demo_safe_area.dart';
import 'package:flutter_pro/awsome/demo_scroll_controller.dart';
import 'package:flutter_pro/awsome/demo_scroll_notification.dart';
import 'package:flutter_pro/awsome/demo_sliver_app_bar_advance.dart';
import 'package:flutter_pro/awsome/demo_sliver_app_bar_basic.dart';
import 'package:flutter_pro/awsome/demo_stack.dart';
import 'package:flutter_pro/awsome/demo_visibility.dart';

class AwsomeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AwsomeBuildDemo();
  }
}
typedef onNextPage = void Function(String name);

class Title extends StatelessWidget {
  final String text;

  const Title({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
class ClickButton extends StatelessWidget {
  final String text;
  final Widget targetPage;

  const ClickButton({Key key, @required this.text, @required this.targetPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return targetPage;
            },
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 18,
        ),
      ),
    );
  }
}

class AwsomeBuildDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Title(text: "UI基础"),
          ClickButton(
            text: "Container",
            targetPage: DemoContainer(),
          ),
          ClickButton(
            text: "Button",
            targetPage: DemoButton(),
          ),
          ClickButton(
            text: "ClipRRect",
            targetPage: DemoClipRRect(),
          ),
          ClickButton(
            text: "Column",
            targetPage: DemoColumn(),
          ),
          ClickButton(
            text: "Row",
            targetPage: DemoRow(),
          ),
          ClickButton(
            text: "Expanded",
            targetPage: DemoExpanded(),
          ),
          ClickButton(
            text: "Stack",
            targetPage: DemoStack(),
          ),
          ClickButton(
            text: "Visibility",
            targetPage: DemoVisibility(),
          ),
          ClickButton(
            text: "Offstage",
            targetPage: DemoOffstage(),
          ),
          ClickButton(
            text: "SafeArea",
            targetPage: DemoSafeArea(),
          ),
          ClickButton(
            text: "PopupMenuButton",
            targetPage: DemoPopupMenuButton(),
          ),
          ClickButton(
            text: "Bottom Sheet",
            targetPage: DemoBottomSheet(),
          ),
          ClickButton(
            text: "Bottom Modal Sheet",
            targetPage: DemoModalBottomSheet(),
          ),
          ClickButton(
            text: "Refresh Indicator",
            targetPage: DemoRefreshIndicator(),
          ),
          ClickButton(
            text: "BottomNavigationBar",
            targetPage: DemoBottomNavigationBar(),
          ),
          ClickButton(
            text: "Drawer",
            targetPage: DemoDrawer(),
          ),
          ClickButton(
            text: "Clip",
            targetPage: DemoClip(),
          ),
          ClickButton(
            text: "BackdropFilter",
            targetPage: DemoBackdropFilter(),
          ),
          ClickButton(
            text: "CustomPainter",
            targetPage: DemoCustomPainter(),
          ),
          ClickButton(
            text: "NavigationRail",
            targetPage: DemoNavigationRail(),
          ),
          Title(text: "UI进阶"),
          ClickButton(
            text: "SliverAppBar Basic",
            targetPage: DemoSliverAppBarBasic(),
          ),
          ClickButton(
            text: "SliverAppBar advance",
            targetPage: DemoSliverAppBarAdvance(),
          ),
          ClickButton(
            text: "CustomScrollView",
            targetPage: DemoCustomScrollView(),
          ),
          ClickButton(
            text: "Scroll Controller",
            targetPage: DemoScrollController(),
          ),
          ClickButton(
            text: "Scroll Notification",
            targetPage: DemoScrollNotification(),
          ),
          ClickButton(
            text: "Refresh Load More",
            targetPage: DemoRefreshLoadMore(),
          ),
          Title(text: "自定义"),
          ClickButton(
            text: "Custom Time Picker",
            targetPage: DemoCustomTimePicker(),
          ),
          Title(text: "状态管理"),
          ClickButton(
            text: "Lifecycle",
            targetPage: DemoLifecycle(),
          ),
          ClickButton(
            text: "State Provider",
            targetPage: DemoStateProvider(),
          ),
          ClickButton(
            text: "InheritedWidget",
            targetPage: DemoInheritedWidget(),
          ),
        ],
    );
  }
}
