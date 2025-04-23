import 'dart:io';

void main() {
    print('Enter your name:');
    String? name = stdin.readLineSync()!;
    print("Enter your name:\n$name");

    print('Enter your score:');
    String? scoreText = stdin.readLineSync()!;
    print('Enter your score:\n$scoreText');

    int score = int.parse(scoreText);
    score += 10;

    print('Name in UPPERCASE: ${name.toUpperCase()}');
    print('Name in lowercase: ${name.toLowerCase()}');
    print('Length of name: ${name.length}');
    print('Final score after bonus: ${score}');
    print('Is final score >= 50? ${score >= 50}');

}
