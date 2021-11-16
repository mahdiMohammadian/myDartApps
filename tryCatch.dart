import 'dart:math';
import 'getUserInput.dart';
void main(List<String> args) {
 Random rand = Random();
   int easyG= rand.nextInt(10);
   int mediumG= rand.nextInt(50);
   int hardG= rand.nextInt(100);
   int level = getUserInput("please select a level \n 1: for easy \n 2: for medium \n 3: for dificult\n level ");
   if(level ==1)
   {
     int num = getUserInput("please guess a number between 1 and 10 ");
     if(num==easyG)
     {
       print(" you won the game the number is correct ");
     }
     else{
       print(" wrong number ");
     }
   } else if (level==2)
   {
     int num = getUserInput("please guess a number between 1 and 50 ");
     if(num==mediumG)
     {
       print(" you won the game the number is correct");
     }
     else {
       print(" wrong number ");
     }
   } else if(num==3)
   {
     int num = getUserInput("please guess a number between 1 and 100 ");
     if(num==hardG)
     {
       print(" you won the game the number is correct");
     }
     else {
       print(" wrong number ");
     }
   }
    else {
     print(" you've selected the wrong level ");
   }
 }