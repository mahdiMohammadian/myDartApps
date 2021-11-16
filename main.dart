import 'dart:io';
void main(){
  stdout.write("please enter your fucking name : ");
  String? name= stdin.readLineSync();
  stdout.write("please enter your score : ");
  var score =stdin.readLineSync();
   print("1: your name is = $name");
  print("2: you have $score score ");
   int castedScore =int.parse(score!);
   if (castedScore<=100 && castedScore>=90) {
     print("3: your grade is: A");
   }
   else if (castedScore>=80 && castedScore <90) {
     print("3: your grade is: B");
   }
   else if (castedScore>=70 && castedScore <80) {
     print("3: your grade is: C");
   }
   else if (castedScore>=60 && castedScore <70) {
     print("3: your grade is: D");
   }
    else 
    print("3: failed try to work harder the next time ");
}
