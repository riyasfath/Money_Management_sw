import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (ctx,index){
      return Card(
        child: ListTile(
          title: Text('Expense category list $index'),
          trailing:IconButton(onPressed: (){

          }, icon: Icon(Icons.delete)) ,
        ),
      );

    },
      separatorBuilder: (ctx,index){
        return const SizedBox(height: 10);

      },
      itemCount: 50,
    );
  }
}
