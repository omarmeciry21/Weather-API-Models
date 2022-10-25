import 'dart:convert';

import 'package:Weather_App/data/models/weather_api_response.dart';
import 'package:http/http.dart' as http;

class WeatherAPI{
 static Future<WeatherAPIResponse> getApiData()async{
    try{
    final http.Response request = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/forecast?lat=44.34&lon=10.99&appid=f99c7f8b49eb5263a6cfba9ab3559448#"));
    if(request.statusCode<=299&&request.statusCode>=200){
      final Map<String,dynamic> jsonBody = jsonDecode(request.body);
      WeatherAPIResponse weatherAPIResponse = WeatherAPIResponse.fromMap(jsonBody);
      return weatherAPIResponse;
    }
    else{
      throw('RequestFailure '+ request.body);
    }} on Exception catch( e){

    throw('RequestFailure '+ e.toString());
    }
  }
}