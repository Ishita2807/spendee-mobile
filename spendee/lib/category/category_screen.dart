import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/category/category_bloc.dart';
import 'package:spendee/category/category_event.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);


  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  var res;
  @override
  void initState(){
    context.read<CategoryBloc>().add(AddCategory(context: context));
    super.initState();
  }

  _showFormDialog(BuildContext context){
    res = ModalRoute.of(context)!.settings.arguments;
    return showDialog(context: context, barrierDismissible: true,builder: (param){
      return AlertDialog(
        actions: [
          ElevatedButton(onPressed: (){
            context.read<CategoryBloc>().add(SaveCategoryButton(context: context));
            }, child: Text('Save')),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                        (states) =>
                    Colors.red),
              ),
              onPressed: (){
                Navigator.pop(context,'/');
              }, child: Text('Cancel'))

        ],
        title: Text("Add New Category"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Category',
                  labelText: 'Add Category'
                ),
                onChanged: (value) =>context.read<CategoryScreen>() ,
              ),
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){
          _showFormDialog(context);
        },
          child: Icon(Icons.add),),

        appBar: AppBar(
        title: Text('Category'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10, right: 10),
              child: Row(
                  children: [
                    Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 170,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 28),
                                child: GestureDetector(
                                    child: (res != null && res['category_name'] != null && res['category_name'] != "")? Text(
                                        res['category_name'],style: TextStyle(fontSize: 28),textAlign: TextAlign.center
                                    ): SizedBox.shrink(),
                                        onTap: ()=>{
                                      Navigator.pushNamed(context, '/Second')
                                        },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                   ]
              ),
            ),
          ],
        ),
      ),

    );
  }
}
