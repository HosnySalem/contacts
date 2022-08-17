import 'package:contacts/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:contacts/login_Screen.dart';
import 'package:contacts/user.dart';
class homePage extends StatefulWidget {
  Map b;
  Map user;
  homePage({
    @required this.user
  });

  @override
  State<homePage> createState() => _homePage();
}

class _homePage extends State<homePage> {
  int flag =0;

  Icon fav = Icon(Icons.favorite);

  Icon nfav = Icon(Icons.favorite_outline);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (c){
                    return mainpage();
                  })
              );
            },
            icon:const Icon(Icons.arrow_back_ios)),
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "My Profile",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(backgroundImage: AssetImage('assets/img/me.jpg'),radius: 50,),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[500],
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Name",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            backgroundColor: Colors.blue
                        ),),
                      SizedBox(width: 20,),
                      Text("Yousief Ahmed"
                        ,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),//name
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[500],
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Phone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            backgroundColor: Colors.blue
                        ),),
                      SizedBox(width: 20,),
                      Text("01212436598",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),//phone
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[500],
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Email",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            backgroundColor: Colors.blue
                        ),),
                      SizedBox(width: 20,),
                      Text("yousiefahmed@gmail.com",style: TextStyle(fontSize: 20),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}