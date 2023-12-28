import 'package:http/http.dart' as http;
import 'package:weatherapp/consts/strings.dart';
import 'package:weatherapp/models/currentWeather.dart';

var link = "https://api.openweathermap.org/data/2.5/weather?lat={$latitude}&lon={$longitude}&appid={$apiKey}";

getCurrentWeather()async{
  var response = await http.get(Uri.parse(link));
  if( response.statusCode == 200){
    var data = currentWeatherFromJson(response.body.toString());

    return data;
  }
}
