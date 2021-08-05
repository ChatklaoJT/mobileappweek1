void main(){
  //print(callgen(2000));

  // var x = callColor();
  // print(x);

  callWeb("Google",protocal: "http",port : 443);
}

/*String callgen(int year){

  // var year = 2000;
    //var x = (year >= 1996) ? ("Gen Z") : ("Gen Y") ;

    return (year >= 1996) ? ("Gen Z") : ("Gen Y") ;
  // if(year >= 1996){
  //   print("Gen Z");
  // }else{
  //   print("Gen Y");
  // }
     // การเช็คเงื่อนไข      TRUE        False
  // (year >= 1996) ? print("Gen Z") : print("Gen Y") ;
   //return x;

}*/
String callgen(int year) => (year >= 1996) ? ("Gen Z") : ("Gen Y") ;

int callColor([String newColor = "pink"]){

  
  //
  List<dynamic> color = ["red","blue","green"];

  color.add(newColor);
  
  for(var item in color){
    print(item);
  }

  return color.length;

}

void callWeb(String web ,{int port = 80, String protocal = "http"}) => print("$protocal $web : $port");