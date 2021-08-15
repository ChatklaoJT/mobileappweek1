import 'country.dart';
import 'city.dart';


void main(){
  print("Hello World");

  //Country item = new Country.korea("โซล", "เสือโคร่งไซบีเรีย");
  //print("Welcome to " + item.country);
  //item.callHello();
  //print("เมืองหลวง : " + item.city);

  //print("สัตว์ประจำชาติ :" + item.callAnimal());

  //print("สีประจำชาติ :" + Country.color);

  var order = City();
  print("welcome to " + order.country);
  order.callSuper();

  print(order.callAnimal());
  order.callProblem();
}




