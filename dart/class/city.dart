import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
  City() : super("โซล","BLUE, RED, BLACK, WHITE");

  void callSuper(){
    print("เมืองหลวง :" + super.city);
    super.callHello();
  }

  @override
  String callAnimal(){
    return "เสือโคร่งไซบีเรีย";
  }
}