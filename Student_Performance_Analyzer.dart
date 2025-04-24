import 'dart:io';

void main() {
  print('Enter your full name:');
  String fullName = stdin.readLineSync()!;
  print('Your full name is:\n$fullName');

  print('Enter your first score:');
  String score1Text = stdin.readLineSync()!;
  print('Your first score is:\n$score1Text');

  print('Enter your second score:');
  String score2Text = stdin.readLineSync()!;
  print('Your second score is:\n$score2Text');

  print('Enter your third score:');
  String score3Text = stdin.readLineSync()!;
  print('Your third score is:\n$score3Text');

  int score1 = int.parse(score1Text);
  int score2 = int.parse(score2Text);
  int score3 = int.parse(score3Text);

  int totalScore = score1 + score2 + score3;
  totalScore += 5;

  int averageScore = totalScore ~/ 3;

  print('\n--- Student Performance ---');
  print('Name in UPPERCASE: ${fullName.toUpperCase()}');
  print('Name in lowercase: ${fullName.toLowerCase()}');
  print('Length of name: ${fullName.length}');
  print('Total score after bonus: $totalScore');
  print('Average score: $averageScore');
  print('Did the student pass? ${averageScore >= 50}');
}
