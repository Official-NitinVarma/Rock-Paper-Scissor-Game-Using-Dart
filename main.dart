// Creating Rock Paper Scissor Game using random and if-else

import 'dart:io';

import 'dart:math';
void main(){

  // Welcoming the user
stdout.write("Enter you name:");
var userName = stdin.readLineSync();
print("Hello $userName! Welcome to RPS Game. ");

// Taking User's move
print("It's your turn. Play by typing the below numbers \n0 -> Rock\n1 -> Paper\n2 -> Scissor");
int usersMove = int.parse(stdin.readLineSync()!);
var usersMoveName;
usersMove == 0 ?
usersMoveName = "Rock" : usersMove == 1 ?
 usersMoveName = "Paper" :  usersMoveName = "Scissor";

 // Computer's move
var  computersMoveDefining = Random();
int computersMove = computersMoveDefining.nextInt(3);

var computersMoveName;
computersMove == 0?
computersMoveName = "Rock" : computersMove == 1 ?
computersMoveName = "Paper" : computersMoveName = "Scissor";

// Printing both moves and assigning scores
print("Your Move: $usersMoveName\nComputer's move: $computersMoveName\n***************");
int compScore = 0;
int userScore = 0;

// Winning decision 
if (computersMove > usersMove) {
compScore++;
print("Computer Score: $compScore | Your score: $userScore\n***************\nCOMPUTER WON");
}
else if (computersMove < usersMove) {
userScore++;
print("Computer Score: $compScore | Your score: $userScore\n***************\nYOU WON");
}
else {
  compScore++;
  userScore++;
  print("Computer Score: $compScore | Your score: $userScore\n***************\nDRAW, PLAY AGAIN");
}
}
