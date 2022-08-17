import 'package:contacts/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:contacts/component/component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';

class login extends StatelessWidget{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  int c=0;
  final _emailKey = GlobalKey<FormState>();
  final _passKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context,AppStates state) {  },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit =AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title:const Text(
                "Contacts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,

                ),
              ),
            ),
            body: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ), //Login text
                    const SizedBox(height: 20,),
                    field (type: email,label: "Email",hint: "Enter Your mail",texttype:TextInputType.emailAddress,icon: Icon(Icons.email),vis: false), // Email
                    field (type: pass,label: "Password",hint: "Enter Your password",texttype:TextInputType.emailAddress,icon: Icon(Icons.lock),vis: true), // pass
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: Colors.lightBlueAccent,
                      onPressed:(){

                        /*if (_emailKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    if (_passKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }*/

                        for(int i=0;i<cubit.users.length;i++){
                          if(email.text==cubit.users[i].email){
                            if(pass.text==cubit.users[i].password){
                              c=1;
                              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                                return mainpage();
                              }),
                              );
                            }
                          }

                        }
                        if(c==0)ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('invalid email or password')),
                        );

                      },
                      child:const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );



        },

      ),
    );
  }

}
