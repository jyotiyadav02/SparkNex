// import 'package:flutter/material.dart';
// import 'package:sparknex/screens/admin_panel_screen.dart';
// import 'package:sparknex/screens/community_forum_screen.dart';
// import 'package:sparknex/screens/direct_message_Screen.dart';
// import 'package:sparknex/screens/home_screen.dart';
// import 'package:sparknex/screens/notification_screen.dart';
// import 'package:sparknex/screens/search_screen.dart';
// import 'package:sparknex/screens/spark_bot_chat_screen.dart';

// import '../widgets/custom_navigation_bar.dart';

// class Bottom_Navigation_Screen extends StatefulWidget {
//   const Bottom_Navigation_Screen({Key? key}) : super(key: key);

//   @override
//   State<Bottom_Navigation_Screen> createState() => _Bottom_Navigation_ScreenState();
// }

// class _Bottom_Navigation_ScreenState extends State<Bottom_Navigation_Screen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(), 
//     const DirectMessageScreen(),
//     const SearchScreen(),
//     const NotificationScreen(),
//     const AdminPanelScreen()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Image.asset(
//           "assets/images/splashimage.png",
//           height: 70,
//           width: 120,
//         ),
//         actions: const [
//           Icon(
//             Icons.menu,
//             color: Color.fromARGB(255, 44, 5, 111),
//           )
//         ],
//       ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int newIndex) {
//           setState(() {
//             _currentIndex = newIndex;
//           });
//         },
//       ),
//     );
//   }
// }
