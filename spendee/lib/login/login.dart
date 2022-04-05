import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/login/login_bloc.dart';

import 'login_event.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocProvider<LoginBloc>(
        create: (BuildContext context) => LoginBloc(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 50, right: 60, left: 60, bottom: 30),
                child: Text('Welcome Back!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'abc@gmail.com',
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '****',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 5),
                child: Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: this.valuefirst,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuefirst = value!;
                          });
                        }),
                    Text('Remember me')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 5),
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
                        'login',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: (){
                        print("Login Button Clicked");
                        context.read<LoginBloc>().add(Login(context: context));

                      }
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 35, left: 35, bottom: 2),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: GestureDetector(
                      child: Text('Forgot Password?',
                          style: TextStyle(
                              fontSize: 16,decoration:TextDecoration.underline,color: Colors.blue)),
                      onTap: ()=>{
                        Navigator.pushNamed(context,'/Fourth')
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:2, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: GestureDetector(
                      child: Text('Create an account?',style: TextStyle(fontSize: 16,decoration:TextDecoration.underline,color: Colors.blue)),
                      onTap: ()=>{
                        Navigator.pushNamed(context,'/Third')
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
