import 'package:flutter/material.dart';


class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
          child:Icon(Icons.add,color: Colors.white)
      ),

      appBar: AppBar(
        title: Text('Transaction'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:40,top: 20,right: 40),
          child: Container(
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_upward,color: Colors.green,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Income',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                              ),
                              Text('\$200')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                             Icon(Icons.arrow_downward,color: Colors.red,),

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Expense',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                              ),
                              Text('\$100')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

             
            ),

        ),
        

      ),

    );
  }
}
