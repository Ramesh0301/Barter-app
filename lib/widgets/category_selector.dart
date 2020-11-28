import 'package:flutter/material.dart';
// import './recent_chats.dart';
// import './feed.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';
import 'package:flutter_chat_ui/widgets/feed.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Feed', 'Profile', 'Chats'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Feed',
                  // child: Feed(),
                ),
                Tab(text: 'Profile'),
                Tab(
                  text: 'Chats',
                  // child: RecentChats()
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Feed(),
              Icon(Icons.directions_transit),
              RecentChats(),
              // Icon(Icons.directions_car),
              // Icon(Icons.directions_transit),
              // Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    ),
    );
  }
}


// ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: categories.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//               // Navigator.pushNamed(context, '/${selectedIndex}');
//               // if(selectedIndex==0): {Navigator.}
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 35.0,
//                 vertical: 30.0,
//               ),
//               child: Text(
//                 categories[index],
//                 style: TextStyle(
//                   color: index == selectedIndex ? Colors.white : Colors.white60,
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),