import 'package:flutter/material.dart';
class keypad extends StatefulWidget {
  @override
  State<keypad> createState() => _keypadState();
}

class _keypadState extends State<keypad> {
  String txt='';
  double res;
  bool del =false;

  Widget button1({String name,Function action})=>
      MaterialButton(onPressed:action,
        color: Colors.grey[100],

        child: Text(name,style: (TextStyle(fontSize: 30)),),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(txt,style: TextStyle(fontSize: 40),),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button1(name: '1',action:  (){
                          setState(() { txt+='1'; });
                        }),
                        button1(name: '2',action:  (){
                          setState(() { txt+='2'; });
                        }),
                        button1(name: '3',action:  (){
                          setState(() { txt+='3'; });
                        }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button1(name: '4',action:  (){
                          setState(() { txt+='4'; });
                        }),
                        button1(name: '5',action:  (){
                          setState(() { txt+='5'; });
                        }),
                        button1(name: '6',action:  (){
                          setState(() { txt+='6'; });
                        }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button1(name: '7',action:  (){
                          setState(() { txt+='7'; });
                        }),
                        button1(name: '8',action:  (){
                          setState(() { txt+='8'; });
                        }),
                        button1(name: '9',action:  (){
                          setState(() { txt+='9'; });
                        }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button1(name: '*',action:  (){
                          setState(() { txt+='*'; });
                        }),
                        button1(name: '0',action:  (){
                          setState(() { txt+='0'; });
                        }),
                        button1(name: '#',action:  (){
                          setState(() { txt+=' # '; });
                        }),

                      ],
                    ),
                  ),

                 Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(onPressed:(){},
                          color: Colors.grey[100],
                          child: Icon(Icons.message),
                        ),

                        button1(name: 'C',action:  (){
                          setState(() { txt =txt.substring(0,txt.length-1); });
                        }),
                        MaterialButton(onPressed:(){},
                          color: Colors.grey[100],
                          child: Icon(Icons.call),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
