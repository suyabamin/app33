import 'package:app333/Fragment/HomeFragment.dart';
import 'package:app333/Fragment/alarmFragment.dart';
import 'package:app333/Fragment/balanceFragment.dart';
import 'package:app333/Fragment/contactFragment.dart';
import 'package:app333/Fragment/emailFragment.dart';

import 'package:app333/Fragment/scarchFragment.dart';
import 'package:app333/Fragment/settingFragment.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}  

class MyApp extends StatelessWidget {
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
     theme: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.pink
      ),
    
     home: HomeActivity(),
      
    );
  }

}



class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

 MySnackBar(message,contex){
  return ScaffoldMessenger .of(contex).showSnackBar(
    SnackBar(content: Text(message))
  );

 }

////tap bar create
  @override
  Widget build(BuildContext context) {

   return DefaultTabController(
    length: 8,
     child: Scaffold(
      appBar: AppBar(
        title: Text("My app"),
        bottom: TabBar(
          isScrollable: true,
          tabs:[
            Tab(icon:Icon(Icons.home),text:'home' ,),
            Tab(icon:Icon(Icons.screen_search_desktop) ,text:'scarch',),
            Tab(icon:Icon(Icons.settings),text: 'setting' ,),
            Tab(icon:Icon(Icons.email),text:'email' ,),
            Tab(icon:Icon(Icons.contact_mail),text:'contact mail' ,),
          
            Tab(icon:Icon(Icons.access_alarm) ,text: 'alerm',),
            Tab(icon:Icon(Icons.account_balance) ,text: 'account',),
          ], 
          ),
      ),
    body: TabBarView(
      children: [
        Homefragment(),
        Scarchfragment(),
        Settingfragment(),
        Emailfragment(),
        Contactfragment(),
         Alarmfragment(),
        Balancefragment(),
       
      ],
      ),
    
     ),
   );

  


  }
  
  
  
}

