import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_cupertino_store/hhomepage.dart';
import 'package:pr1_cupertino_store/searchpage.dart';

import 'cartpage.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({Key? key}) : super(key: key);

  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage>
   with SingleTickerProviderStateMixin{

  late TabController tabController;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  int currentitem = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              IndexedStack(
                index: currentitem,
                children: [
                  HomePage(),
                  SerachPage(),
                  CartPage(),
                ],
              ),
             CupertinoTabBar(
               activeColor: Colors.blue,
              backgroundColor: Colors.grey[200],
              currentIndex: currentitem,
              onTap: (val) {
                setState(() {
                  currentitem = val;
                });
                tabController.animateTo(val);
                pageController.animateToPage(val, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              }, items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Products",),
                BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search",),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: "cart",),
              ],
             ),
            ],
          ),
        ),
    );
  }
}


//
// CupertinoApp(
// debugShowCheckedModeBanner: false,
// home: CupertinoPageScaffold(
// navigationBar: CupertinoNavigationBar(
// leading: Builder(builder: (context) {
// return GestureDetector(
// child: Icon(
// Icons.menu,
// color: Colors.white,
// ),
// onTap: () {
// showCupertinoDialog(
// context: context,
// builder: (context) {
// return Row(
// children: [
// Expanded(
// flex: 8,
// child: DrawerPage(),
// ),
// Expanded(
// flex: 3,
// child: GestureDetector(
// onTap: () {
// setState(() {
// Navigator.pop(context);
// });
// },
// child: Container(
// color: Colors.transparent,
// ),
// ),
// ),
// ],
// );
// });
// },
// );
// }),
// middle: Text(
// "Platform Convertor",
// style: TextStyle(
// color: Colors.white,
// fontSize: 22,
// fontWeight: FontWeight.w700),
// ),
// backgroundColor: Colors.purpleAccent[100],
// trailing: CupertinoSwitch(
// value: Global.isIOS,
// onChanged: (val) {
// setState(() {
// Global.isIOS = val;
//
// // Global.swval = val;
// // if(Global.swval == false){
// //   Platform.isAndroid;
// // }else if(Global.swval == true){
// //   Platform.isIOS;
// // }
// });
// }),
// ),
// child: Container(
// child: Stack(
// alignment: Alignment.bottomCenter,
// children: [
// IndexedStack(
// index: Global.currentItem,
// children: [
// ChatPage(),
// CallPage(),
// SettingPage(),
// ],
// ),
// CupertinoTabBar(
// // currentIndex: currentCupertinoIndex,
// // onTap: (val) {
// //   setState(() {
// //     currentCupertinoIndex = val;
// //   });
// // },
// backgroundColor: Colors.purpleAccent[100],
// iconSize: 30,
// currentIndex: Global.currentItem,
// activeColor: Colors.white,
// onTap: (val) {
// setState(() {
// Global.currentItem = val;
// // currentCupertinoIndex = val;
// });
// Global.tabController.animateTo(val);
// Global.pageController.animateToPage(val,
// duration: Duration(milliseconds: 200),
// curve: Curves.easeInOut);
// },
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home), label: "Home"),
// BottomNavigationBarItem(
// icon: Icon(Icons.phone), label: "Calls"),
// BottomNavigationBarItem(
// icon: Icon(Icons.settings), label: "Settings"),
// ],
// ),
// // Padding(
// //   padding: const EdgeInsets.only(bottom: 65, right: 15),
// //      child: Align(
// //         alignment: Alignment.bottomRight,
// //           child: Builder(
// //             builder: (context) {
// //               return GestureDetector(
// //                 onTap: ()  {
// //                   setState(() async {
// //                     await showCupertinoDialog(context: context, builder: (context) {
// //                       return CupertinoAlertDialog(
// //                         content: Container(
// //                           width: 390,
// //                           height: 500,
// //                           child: StepperComponent(),
// //                         ),
// //                       );
// //                     });
// //                     // StepperComponent();
// //                     // showModalBottomSheet(context: context, builder: (context) {
// //                     //   return Column(
// //                     //     children: [
// //                     //       Expanded(
// //                     //         flex: 3,
// //                     //         child: Container(color: Colors.blue,),),
// //                     //       Expanded(
// //                     //         flex: 7,
// //                     //         child: Container(color: Colors.deepOrange,),),
// //                     //     ],
// //                     //   );
// //                     // },);
// //                   });
// //                 },
// //                 child: Container(
// //                   height: 60,
// //                   width: 60,
// //                   decoration: BoxDecoration(
// //                     color: Colors.blue,
// //                     borderRadius: BorderRadius.circular(100),
// //                   ),
// //                 ),
// //               );
// //             }
// //           ),
// //       ),
// //
// // ),
// // Padding(
// //   padding: const EdgeInsets.only(bottom: 80, right: 32),
// //   child: Align(
// //     alignment: Alignment.bottomRight,
// //     child: Icon(
// //       Icons.add,
// //       color: Colors.white,
// //       size: 25,
// //     ),
// //   ),
// // ),
// // // PageView(
// // //   onPageChanged: (val) {
// // //     setState(() {
// // //       Global.currentItem = val;
// // //     });
// // //     Global.tabController.animateTo(val);
// // //   },
// // //   controller: Global.pageController,
// // //   physics: BouncingScrollPhysics(),
// // //   scrollDirection: Axis.horizontal,
// // //   pageSnapping: true,
// // //   children: [
// // //     ChatPage(),
// // //     CallPage(),
// // //     SettingPage(),
// // //   ],
// // // ),
// ],
// ),
// ),
// ),
// );