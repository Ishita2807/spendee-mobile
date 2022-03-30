import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 10,
          width: MediaQuery.of(context).size.width * 10,
          child: Column(

            children: [
              Padding(
                padding:
                const EdgeInsets.only(top: 50, right: 60, left: 60),
                child: Text('Forgot Your',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Text(' Password?',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 40, left: 40,bottom: 5),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text("We get it, stuff happens. Just enter your email address below and we'll send you a link to reset your password!",
                        textAlign: TextAlign.center)),
              ),

              Padding(
                padding:
                const EdgeInsets.only(top:20, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Enter Email Address',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
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
                        'Reset Password',
                        style: TextStyle(
                            fontSize: 18,
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
                      child: Text('Create an account!',style: TextStyle(fontSize: 18,decoration:TextDecoration.underline,color: Colors.blue)),
                      onTap: ()=>{
                        Navigator.pushNamed(context,'/Second')
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 5),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Column(
                        children: [Text('Already have an account?',style:TextStyle(fontSize: 16) ),
                          GestureDetector(
                            child: Text('Login!',style: TextStyle(fontSize: 16,decoration:TextDecoration.underline,color: Colors.blue)),
                            onTap: ()=>{
                              Navigator.pushNamed(context,'/')
                            },
                          ),
                        ],
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
