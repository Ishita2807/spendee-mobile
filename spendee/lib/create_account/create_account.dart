import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/create_account/create_account_bloc.dart';
import 'package:spendee/create_account/create_account_state.dart';
import 'create_account_event.dart';

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
      body: BlocBuilder<CreateAccountBloc, CreateAccountState>(builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(top: 50, right: 50, left: 50, bottom: 20),
                child: Text('Create an Account!',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 5, right: 35, left: 35, bottom: 10),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(
                          30)),
                    ),
                    onChanged: (value) =>
                        context.read<CreateAccountBloc>().add(
                          FirstName(first_name: value),
                        ),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(
                          30)),
                    ),
                    onChanged: (value) =>
                        context.read<CreateAccountBloc>().add(
                          LastName(last_name: value),
                        ),

                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(
                          30)),
                    ),
                    onChanged: (value) =>
                        context.read<CreateAccountBloc>().add(
                          EmailAddress(email_address: value),
                        ),

                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 15),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(
                          30)),
                    ),
                    onChanged: (value) =>
                        context.read<CreateAccountBloc>().add(
                          CreatePassword(create_password: value),
                        ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                          backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.blue)),
                      child: Text(
                        'Register Account',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        context.read<CreateAccountBloc>().add(RegisterAccount(
                            context: context));
                        print("Login Button Clicked");
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: Center(
                    child: GestureDetector(
                      child: Text('Forgot Password?', style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue)),
                      onTap: () =>
                      {
                        Navigator.pushNamed(context, '/Fourth')
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, right: 35, left: 35, bottom: 5),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.06,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  child: Center(
                    child: Column(
                      children: [Text('Already have an account?',
                          style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          child: Text('Login!', style: TextStyle(fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: Colors.blue)),
                          onTap: () =>
                          {
                            Navigator.pushNamed(context, '/Second')
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );

      }
      ),
    );
  }
}
