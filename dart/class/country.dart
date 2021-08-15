import 'dart:ffi';

class Country {
  var country = "South Korea";
  var city;
  var _animal = "เป็ด";
  static var color = "BLUE, RED, BLACK, WHITE";

  Country(this.city,this._animal);

  Country.korea(String city,String animal) : this(city,animal);

  void callHello(){
    print("สวัสดีครับ");
  }
  String callAnimal(){
    return this._animal;
  }
  


}