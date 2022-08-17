import 'package:contacts/login_Screen.dart';
import 'package:contacts/tabs/calls/calls.dart';
import 'package:contacts/tabs/contacts/contacts.dart';
import 'package:contacts/tabs/keypad/keypad.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
class mainpage extends StatefulWidget {

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture:CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/img/me.jpg'),
                ),
                accountName: Text(
                  "Yousief Ahmed",
                  style: TextStyle(
                      fontSize:20
                  ),
                ),
                accountEmail: Text(
                    "yousiefahmed@gmail.com"
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  title:const Text(
                    "Profile",
                  ),
                  trailing: Icon(Icons.person),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c){
                          return homePage();
                        })
                    );
                  },
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  trailing:Icon(Icons.group) ,
                  title:Text('New Group') ,
                  onTap: (){},
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  trailing:Icon(Icons.person) ,
                  title:Text('Contacts') ,
                  onTap: (){},
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  trailing:Icon(Icons.call) ,
                  title:Text('Calls') ,
                  onTap: (){},
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  trailing:Icon(Icons.settings) ,
                  title:Text('Settings') ,
                  onTap: (){},
                ),
              ),
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  title:const Text(
                    "Sign out",
                  ),
                  trailing:const Icon(Icons.output),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c){
                          return login();
                        })
                    );
                  },
                ),
              ),

            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title:const Text("Contacts",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
          bottom:TabBar(
              unselectedLabelColor: Colors.grey,
              tabs: [
                SizedBox(
                  height: 50,
                  child: Tab(
                    text: "Contacts",
                    icon: Icon(Icons.chat),
                  ),
                ), //
                SizedBox(
                  height: 50,
                  child: Tab(
                    text: "Call",
                    icon: Icon(Icons.call),
                  ),
                ),
                const SizedBox(
                  height: 50,
                  child: Tab(
                    text: "Keypad",
                    icon: Icon(Icons.keyboard),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
            children: [
              contacts(),
              calls(),
              keypad(),
            ]),
      ),
    ) ;
  }
}