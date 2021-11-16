
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
 Random rand = Random();
   int easyG= rand.nextInt(10);
   int mediumG= rand.nextInt(50);
   int hardG= rand.nextInt(100);

   stdout.write("please select a level 1: for easy, \n 2: for medium \n 3: for dificult");
   int level = stdin.readLineSync() as int;
   if(level ==1)
   {
     stdout.write("please guess a number : ");
     double? num = double.tryParse(stdin.readLineSync());
     if(num==easyG)
     {
       print(" you won the game the number is correct ");
     }
     else{
       print(" wrong number ");
     }
   } else if (level==2)
   {
     stdout.write("please guess a number : ");
     int num = stdin.readLineSync() as int;
     if(num==mediumG)
     {
       print(" you won the game the number is correct");
     }
     else {
       print(" wrong number ");
     }
   } else
   {
     
     stdout.write("please guess a number : ");
     int num = stdin.readLineSync() as int;
     if(num==hardG)
     {
       print(" you won the game the number is correct");
     }
     else {
       print(" wrong number ");
     }
   }
   

 }

 