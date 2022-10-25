class Clouds{
  late int all;
  Clouds({required this.all});
  Clouds.fromMap(Map map){this.all = map['all'];}
  Map toMap()=>{'all':this.all};
}