import 'package:firebase/pages/carrera10_page.dart';
import 'package:firebase/pages/carrera1_page.dart';
import 'package:firebase/pages/carrera2_page.dart';
import 'package:firebase/pages/carrera3_page.dart';
import 'package:firebase/pages/carrera4_page.dart';
import 'package:firebase/pages/carrera5_page.dart';
import 'package:firebase/pages/carrera6_page.dart';
import 'package:firebase/pages/carrera7_page.dart';
import 'package:firebase/pages/carrera8_page.dart';
import 'package:firebase/pages/food_page.dart';
import 'package:firebase/pages/home_page.dart';
import 'package:firebase/pages/login_page.dart';
import 'package:firebase/pages/register_login_page.dart';
import 'package:firebase/pages/splah_screen.dart';
import 'package:get/route_manager.dart';

routes() => [
  GetPage(name: "/inicio", page: ()=>SplashScreen()),
  GetPage(name: "/home", page: ()=>HomePage()),
  GetPage(name: "/registration", page: ()=>RegisterLoginPage()),
  GetPage(name: "/foodpage", page: ()=>FoodPage()),
  GetPage(name: "/loginpage", page: ()=>LoginPage ()),
  GetPage(name: "/carrera1", page: ()=>Carrera1Page()),
  GetPage(name: "/carrera2", page: ()=>Carrera2Page()),
  GetPage(name: "/carrera3", page: ()=>Carrera3Page()),
  GetPage(name: "/carrera4", page: ()=>Carrera4Page()),
  GetPage(name: "/carrera5", page: ()=>Carrera5Page()),
  GetPage(name: "/carrera6", page: ()=>Carrera6Page()),
  GetPage(name: "/carrera7", page: ()=>Carrera7Page()),
  GetPage(name: "/carrera8", page: ()=>Carrera8Page()),
  GetPage(name: "/carrera9", page: ()=>Carrera8Page()),
  GetPage(name: "/carrera10", page: ()=>Carrera10Page()),
  
  ];
  
  