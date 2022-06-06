
import 'package:flutter/material.dart';
import 'package:whpro/src/ui/views/demo.dart';
import 'package:whpro/src/ui/views/home.dart';

class AppRoutes{
 static Route<dynamic> generateRoute(RouteSettings settings){
   switch(settings.name){
     case 'home':
       {
         return MaterialPageRoute(builder: (context) => Home());
       }
     case 'demo':
       {
         return MaterialPageRoute(builder: (context) => Demo());
       }
     default:
       {
         return MaterialPageRoute(builder: (context) => Home());
       }
   }
 }
}