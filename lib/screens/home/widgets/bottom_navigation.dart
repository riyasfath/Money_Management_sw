import 'package:flutter/material.dart';
import 'package:moneyapp/screens/home/screen_home.dart';

class MoneyBottomNavigation extends StatelessWidget {
  const MoneyBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _){
         return BottomNavigationBar(

           selectedItemColor: Colors.purple,

             currentIndex: updatedIndex,
             onTap: (newIndex){
               ScreenHome.selectedIndexNotifier.value =newIndex;

             },

             items: [BottomNavigationBarItem(icon: Icon(Icons.home),
                 label: 'Transaction'),
               BottomNavigationBarItem(icon: Icon(Icons.category),
                   label: 'Categories'),
             ]);
      },
    );
  }
}
