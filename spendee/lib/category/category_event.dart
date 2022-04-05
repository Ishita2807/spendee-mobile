
import 'package:flutter/cupertino.dart';

abstract class CategoryEvent{}

class CategoryName extends CategoryEvent{

  final String category_name;

  CategoryName({required this.category_name});

}

class SaveCategoryButton extends CategoryEvent{
  BuildContext context;
  SaveCategoryButton({required this.context});

}
class AddCategory extends CategoryEvent{
  BuildContext context;
  AddCategory({required this.context});

}

