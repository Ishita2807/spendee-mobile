import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home'),
        ),
          body: Container(
            color: Colors.white,
            child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Income',style: TextStyle(fontSize:16 ),),
                        Spacer(),
                        Text('Expenses',style: TextStyle(fontSize:16 ),),
                        Spacer(),
                        Text('Total',style: TextStyle(fontSize:16 ),)
                      ],
                    ),
                  ),
          ),

          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                  SizedBox(
                    height: 100,
                    width: 30,
                    child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.home,color: Colors.white),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top:5),
                          child: Text('Home',style: TextStyle(color:Colors.white,fontSize:15)),
                        )
                      ],
                    ) ,
                ),
                  ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.category,color: Colors.blueGrey),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top:5),
                        child: const Text('Category',style: TextStyle(color:Colors.black,fontSize:15)),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Fifth');

                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.account_box,color: Colors.blueGrey),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top:5),
                        child: const Text('Accounts',style: TextStyle(color:Colors.black,fontSize:15)),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.money,color: Colors.blueGrey),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top:3),
                        child: const Text('Transactions',style: TextStyle(color:Colors.black,fontSize:15)),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.login,color: Colors.blueGrey),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top:5),
                        child: const Text('Login',style: TextStyle(color:Colors.black,fontSize:15)),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pushNamed(context,'/Second');
                  },
                ),ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person_add_alt,color: Colors.blueGrey),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top:3),
                        child: const Text('SignUp',style: TextStyle(color:Colors.black,fontSize:15)),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pushNamed(context,'/Third');
                  },
                ),
              ],
            ),
          )
      )
    );

  }
}
