class CreateAccountState {
  String first_name;
  String last_name;
  String email_address;
  String create_password;


  CreateAccountState({
    this.first_name='',
    this.last_name='',
    this.email_address='',
    this.create_password='',
  });

  CreateAccountState copyWith({
    String? first_name,
    String? last_name,
    String? email_address,
    String? create_password

  }) {
    return CreateAccountState(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email_address: email_address ?? this.email_address,
      create_password: create_password ?? this.create_password

    );
  }
}
