class AccountState {
  int number;
  int balance;
  int user_id;
  String name;
  String account_type;


  AccountState({
    this.number= 0,
    this.balance=0,
    this.user_id=0,
    this.name = '',
    this.account_type = ''
  });


  AccountState copyWith({
    int? number,
    int? balance,
    int? user_id,
    String? name,
     String? account_type,

  }) {
    return AccountState(
      number: number ?? this.number,
      balance: balance ?? this.balance,
      user_id: user_id ?? this.user_id,
      name:  name ?? this.name,
      account_type: account_type ?? this.account_type,

    );
  }
}








