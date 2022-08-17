import 'package:contacts/tabs/contacts/conDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';


class calls extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context,AppStates state) {  },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit =AppCubit.get(context);
          return Container(
            color: Colors.white,
            child: ListView(
              children: [
                for(int i = 0; i < cubit.b.length; i++)
                  Column(
                    children: [
                      const SizedBox(height: 10,),
                      Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(cubit.b[i]['img']),
                          ),
                          title: Text(cubit.b[i]['Name'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle:Row(
                            children: [
                              Expanded(
                                child: Text(cubit.b[i]['Phone'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Text(cubit.b[i]['times']),
                              Text(cubit.b[i]['time']),
                            ],
                          ),
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (c){
                                  return conDetails(b:cubit.b[i]);
                                })
                            );
                          },
                          /*trailing: IconButton(
                              color: Colors.green,
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (c){
                                      return conDetails(b:cubit.b[i]);
                                    })
                                );
                              },
                              icon: Icon(Icons.arrow_forward_ios)),*/
                        ),
                      ),
                      //   Divider(
                      //   color: Colors.grey,
                      //   thickness: 1,
                      //   indent: 25,
                      //   endIndent: 25,
                      // ),
                    ],
                  ),
              ],
            ),
          );



        },

      ),
    );
  }

}
