// Creating Rock Paper Scissor Game using random
import 'dart:io';
import 'dart:math';

void main(){
int compScore = 0;
int userScore = 0;
  // Welcoming the user
stdout.write("Enter you name:");
var userName = stdin.readLineSync();
print("Hello $userName! Welcome to RPS Game. ");


  // Taking User's move
print("It's your turn. Play by typing the below numbers \n0 -> Rock\n1 -> Paper\n2 -> Scissor");
int usersMove = int.parse(stdin.readLineSync()!);
var usersMoveName;
usersMove == 0 ?
usersMoveName = "Scissor" : usersMove == 1 ?
 usersMoveName = "Paper" :  usersMoveName = "Rock";

 // Computer's move
var  computersMoveDefining = Random();
int computersMove = computersMoveDefining.nextInt(3);

var computersMoveName;
computersMove == 0?
computersMoveName = "Scissor" : computersMove == 1 ?
computersMoveName = "Paper" : computersMoveName = "Rock";

// Printing both moves and assigning scores
print("Your Move: $usersMoveName\nComputer's move: $computersMoveName");


// Winning decision 
if ((computersMoveName =="Rock" && usersMoveName == "Scissor")||(computersMoveName == "Scissor"&& usersMoveName == "Paper")||(computersMoveName=="Paper"&&usersMoveName=="Rock")) {
compScore++;
print("Computer Score: $compScore | Your score: $userScore COMPUTER WON");
}
else if ((computersMoveName == "Rock" && usersMoveName=="Rock")||(computersMoveName=="Paper"&&usersMoveName=="Paper")||(usersMoveName=="Scissor" && computersMoveName=="Scissor")) {

  print("Computer Score: $compScore | Your score: $userScore DRAW, PLAY AGAIN");

}
else {
  userScore++;
print("Computer Score: $compScore | Your score: $userScore YOU WON");
}
  
}
