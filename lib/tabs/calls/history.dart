import 'package:contacts/tabs/calls/history.dart';
import 'package:contacts/tabs/contacts/conDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit.dart';
import '../../cubit/states.dart';


class history extends StatelessWidget{

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
                      SizedBox(height: 10,),
                      Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(cubit.b[i]['img']),
                          ),
                          title: Text(cubit.b[i]['Name'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
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
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Text(cubit.b[i]['times']),
                              Text(cubit.b[i]['time']),
                            ],
                          ),
                          onTap: (){

                          },
                         /* trailing: IconButton(
                              color: Colors.green,
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (c){
                                      return conDetails(b:mylist[i]);
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

/*class history extends StatelessWidget {

  @override
  List<Map> mylist = [
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Yousief Ahmed',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
    {
      'img': 'assets/img/eren.jpg',
      'Name': 'Eren Yeager',
      'Phone': "incoming call",
      'times': 'Rang 3 times',
      'time' : '12:23 Am'
    },
    {
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'times': 'Rang 2 times',
      'time' : '05:23 Am'
    },
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'times': 'Rang 1 times',
      'time' : '06:23 Am'
    },
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Yousief Ahmed',
      'Phone': "incoming call",
      'times': 'Rang 4 times',
      'time' : '11:23 Am'
    },
    {
      'img': 'assets/img/eren.jpg',
      'Name': 'Eren Yeager',
      'Phone': "incoming call",
      'times': 'Rang 4 times',
      'time' : '11:23 Am'
    },
    {
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'times': 'Rang 1 times',
      'time' : '06:23 Am'
    },
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
    {
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
    {
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
    {
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'times': 'Rang 9 times',
      'time' : '09:23 Am'
    },
  ];
  int flag =0;
  Icon fav = Icon(Icons.favorite);
  Icon nfav = Icon(Icons.favorite_outline);
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          for(int i = 0; i < mylist.length; i++)
            Column(
              children: [
                SizedBox(height: 10,),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(mylist[i]['img']),
                    ),
                    title: Text(mylist[i]['Name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle:Row(
                      children: [
                        Expanded(
                          child: Text(mylist[i]['Phone'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(mylist[i]['times']),
                        Text(mylist[i]['time']),
                      ],
                    ),
                    onTap: (){

                    },
                    trailing: IconButton(
                        color: Colors.green,
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c){
                                return conDetails(b:mylist[i]);
                              })
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
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

  }
}*/
// SingleChildScrollView(
// child: Column(
// children: [
// for(int i=0;i<mylist.length;i++)
// Column(
// children: [
// GestureDetector(
// onTap: (){
// Navigator.of(context).push(
// MaterialPageRoute(builder: (c){
// return conDetails(b:mylist[i]);
// })
// );
// },
// child: Padding(
// padding: const EdgeInsets.all(12),
// child: Expanded(
// child: Row(
// children: [
// CircleAvatar(
// radius: 25,
// backgroundImage: AssetImage(mylist[i]['img']),
// ),
// SizedBox(width: 25,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(mylist[i]['Name'],
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// fontSize: 22,
// fontWeight: FontWeight.bold
// ),
// ),
// SizedBox(
// height: 2,
// ),
// Text(mylist[i]['Phone'],
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// fontSize: 15,
// ),
// ),
// ],
// )
// ],
// ),
// ),
// ),
// ),
// Divider(
// color:Colors.grey ,
// thickness: 1,
// indent: 25,
// endIndent: 25,
// ),
// ],
// )
// ],
// ),
// ),