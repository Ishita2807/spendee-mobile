class CategoryState {
  String category_name;
  int parent_category_id;


  CategoryState({
    this.category_name='',
    this.parent_category_id=0,



  });


  CategoryState copyWith({
    String? category_name,
    int? parent_category_id,

  }) {
    return CategoryState(
        category_name: category_name ?? this.category_name,
      parent_category_id: parent_category_id ?? this.parent_category_id,

    );
  }
}








