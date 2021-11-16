import 'dart:io';

void main(){

 stdout.write("plese enter the first number");
double? num1 = double.parse(.readLineSync() ?? 0);
stdout.write("please enter the operator");
String? op= stdin.readLineSync();
stdout.write("please enter the second num");
double? num2 =double.parse(.readLineSync() ??0);

if (op=="+") {
double sum = num2+num1;
  print('reult : $sum');
  
}
else if (op=="-") {
  print("$num1 - $num2 is equal to = $num1-$num2");
}
else if (op=="/") {
  print("the division of $num1 / $num2 == $num1/$num2");
  
} 
else {
print("the multiplication of $num1 * $num2 == $num1*$num2");
}




}
