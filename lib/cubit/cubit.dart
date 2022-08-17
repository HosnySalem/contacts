import 'package:contacts/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../User.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(initState());
  static AppCubit get(context)=>BlocProvider.of(context);
  List<Map> b = [
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Yousief Ahmed',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/eren.jpg',
      'Name': 'Eren Yeager',
      'Phone': "sent call",
      'num' :'01141402370',
      'times': 'Rang 3 times  ',
      'time' : '12:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "sent call",
      'num' :'01141402370',
      'times': 'Rang 2 times  ',
      'time' : '05:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 1 times  ',
      'time' : '06:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Yousief Ahmed',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 4 times  ',
      'time' : '11:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/eren.jpg',
      'Name': 'Eren Yeager',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 4 times  ',
      'time' : '11:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 1 times  ',
      'time' : '06:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'Phone': "incoming call",
      'num' :'01141402370',
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'num' :'01141402370',
      'Phone': "incoming call",
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/IEEE.jpg',
      'Name': 'IEEE AL-Azhar university',
      'num' :'01141402370',
      'Phone': "incoming call",
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
    {
      'flag':0,
      'img': 'assets/img/me.jpg',
      'Name': 'Hosny Salem',
      'num' :'01141402370',
      'Phone': "incoming call",
      'times': 'Rang 9 times  ',
      'time' : '09:23 Am'
    },
  ];
  List<user> users =[
    user('hosny','123456789'),
    user('yousief','12345679'),
    user('ahmad','12345678'),
    user('ali','123456'),
    user('mostafa','1234789'),
    user('mahmoud','1256789'),
    user('mohamed','3456789'),
    user('saead','12345689'),
    user('karim','123459'),
  ];


}

