import 'package:flutter/material.dart';
import 'package:Weather_App/data/network/weather_api.dart';
import 'package:Weather_App/data/models/weather_api_response.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);
  late WeatherAPIResponse  responseObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
    child: FutureBuilder<WeatherAPIResponse>(
    future: WeatherAPI.getApiData(),
    builder: (context,snapshot){
      if(snapshot.hasData){
        return Container(child: Text(snapshot.data!.toMap().toString()),);
      }
      if(snapshot.hasError){
        return Container(child: Text(snapshot.error!.toString()),);}
      return Center(child: CircularProgressIndicator(),);
    },
    )
    )
    ));
  }
}
