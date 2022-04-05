import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/accounts/account_event.dart';

import 'account_bloc.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);


  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  var account_type = [
    "Savings",
    "Debit",
    "Credit",
    "Loan",
    "Cash",
    "Bank"
  ];

   var res;
  @override
   void initState(){
     context.read<AccountBloc>().add(AddAccount(context: context));
     super.initState();
   }

  _showFormDialog(BuildContext context){
    res = ModalRoute.of(context)!.settings.arguments;
    return showDialog(context: context, barrierDismissible: true,builder: (param){
      return AlertDialog(
        actions: [
          ElevatedButton(onPressed: (){
            context.read<AccountBloc>().add(SaveAccountButton(context: context));
          }, child: Text('Save Changes')),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                        (states) =>
                    Colors.red),
              ),
              onPressed: (){
                Navigator.pop(context,'/');
              }, child: Text('Discard'))

        ],
        title: Text("Add New Account"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: InputDecoration(
                  label: Text("Account Type"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )
                  ),
                ),
                items: account_type.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) => context.read<AccountBloc>().add(
                    AccountType(account_type: value)),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Account Name"),
                  hintText: 'Name',
                ),
                onChanged: (value) =>context.read<AccountScreen>() ,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Amount'),
                  hintText: 'Amount',

                ),
                onChanged: (value) =>context.read<AccountScreen>() ,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Description"),
                  hintText: 'Description',
                ),
                onChanged: (value) =>context.read<AccountScreen>() ,
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
        title: Text('Account'),
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
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 28),
                              child: GestureDetector(
                                child: (res != null && res['account_type'] != null && res['account_type'] != "")? Text(
                                   res['account_name'],style: TextStyle(fontSize: 28),textAlign: TextAlign.center
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
