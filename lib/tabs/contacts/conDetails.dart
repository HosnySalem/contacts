import 'package:flutter/material.dart';

class conDetails extends StatefulWidget {
  Map b;
  conDetails({
    @required this.b
  });

  @override
  State<conDetails> createState() => _conDetailsState();
}

class _conDetailsState extends State<conDetails> {
 // int flag =0;

  Icon fav = Icon(Icons.favorite);

  Icon nfav = Icon(Icons.favorite_outline);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              widget.b['Name'],
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
                CircleAvatar(backgroundImage: AssetImage(widget.b['img']),radius: 50,),
                SizedBox(
                  height: 20,
                ),
                Text(widget.b['Name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10,
                ),
                Text(widget.b['Phone'],style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){
                        setState((){
                          widget.b['flag']==0?  widget.b['flag']=1 :  widget.b['flag']=0;
                        });
                      },
                      icon: widget.b['flag']==0? nfav:fav,
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}