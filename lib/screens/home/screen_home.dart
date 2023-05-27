import 'package:flutter/material.dart';
import 'package:moneyapp/screens/category/screen_category.dart';
import 'package:moneyapp/screens/home/widgets/bottom_navigation.dart';
import 'package:moneyapp/screens/transaction/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages=  const[
    ScreenTransaction(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('Money Manager'),centerTitle: true,),

      bottomNavigationBar:  const MoneyBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex,_){
          return _pages[updatedIndex];
        },),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value == 0){
          print('Add transaction');

        }else
          {
            print('Add category');
          }
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
