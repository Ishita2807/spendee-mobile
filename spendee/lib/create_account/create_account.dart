import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(top: 50, right: 50, left: 50, bottom: 20),
              child: Text('Create an Account!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: TextStyle(fontSize: 15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(fontSize: 15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(fontSize: 15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Repeat Password',
                    hintStyle: TextStyle(fontSize: 15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue)),
                    child: Text(
                      'Register Account',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () => print("Login Button Clicked")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: GestureDetector(
                    child: Text('Forgot Password?',style: TextStyle(fontSize: 18,decoration:TextDecoration.underline,color: Colors.blue)),
                    onTap: ()=>{
                      Navigator.pushNamed(context,'/Third')
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: GestureDetector(
                    child: Text('Already have an account? Login!',style: TextStyle(fontSize: 18,decoration:TextDecoration.underline,color: Colors.blue)),
                    onTap: ()=>{
                      Navigator.pushNamed(context,'/')
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
