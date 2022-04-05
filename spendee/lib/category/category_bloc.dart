import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/category/category_event.dart';

import '../auth/auth_repository.dart';
import 'category_state.dart';


class CategoryBloc extends Bloc<CategoryEvent, CategoryState>{

  final AuthRepository authRepo = AuthRepository();

  CategoryBloc() : super(CategoryState());

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async*{

    if(event is CategoryName){
      yield state.copyWith(category_name: event.category_name);
    }
    else if(event is SaveCategoryButton)
    {
      print("Save category event Called");
      print(state.category_name);
      print(state.parent_category_id);

      var response = await authRepo.createCategory(state.category_name,state.parent_category_id);

      if(response.statusCode == 200)
      {
        var jsonData = jsonDecode(response.body);
        Navigator.of(event.context).pushNamed('/fifth',arguments: {
          "category_name" : state.category_name
        });

      }
      else{
        print("Failed to create category");
      }
    }

  }
}