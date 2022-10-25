import 'coordinates.dart';

class City {
  late int id;
  late String name;
  late Coordinates coord;
  late String country;
  late int population;
  late int timezone;
  late int sunrise;
  late int sunset;

  City({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
});

  City.fromMap(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
    coord = Coordinates.fromMap(map['coord']);
    country = map['country'];
    population = map['population'];
    timezone = map['timezone'];
    sunrise = map['sunrise'];
    sunset = map['sunset'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map = {
      'id':this.id,
      'name':this.name,
      'coord':this.coord.toMap(),
      'country':this.country,
      'population':this.population,
      'timezone':this.timezone,
      'sunrise':this.sunrise,
      'sunset':this.sunset,
    };
    return map;
  }
}
