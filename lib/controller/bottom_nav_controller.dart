import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/view/home_view/views/home_view.dart';

class BottomNavController extends GetxController{

  var currentIndex = 0.obs;

  var views = [
    const HomeView(),
    const Scaffold(backgroundColor: Colors.yellow,),
    const Scaffold(backgroundColor: Colors.green,),
    const Scaffold(backgroundColor: Colors.blue,),
  ].obs;

  changeIndex({required newIndex}){
    currentIndex.value = newIndex;
  }


}