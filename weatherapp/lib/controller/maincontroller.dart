import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/services/apiServices.dart';

class MainController extends GetxController {

  @override
  void onInit(){
    currentWeatherData = getCurrentWeather();
    super.onInit();


  }

  var isDark = false.obs;
  var currentWeatherData;



  changeTheme() {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}