class Wind{
 late double speed;
 late int deg;
 late int gust;

 Wind({
 required this.speed,
 required this.deg,
 required this.gust,
});

 Wind.fromMap(Map map){
   int x =23;
   x.round();
   this.speed = double.parse(map['speed'].toString());
   this.deg =     int.parse(map['deg'].round().toString());
   this.gust =    int.parse(map['gust'].round().toString());
 }

 Map toMap(){
   return {
     "speed":this.speed,
     "deg":this.deg,
     "gust":this.gust,
   };
 }
}