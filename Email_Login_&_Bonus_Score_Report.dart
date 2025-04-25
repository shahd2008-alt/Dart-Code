import 'dart:io';

void main() {
  print('Enter your email:');
  String emailRaw = stdin.readLineSync()!;
  print(emailRaw);

  print('Re-enter your email to confirm:');
  String emailConfirmRaw = stdin.readLineSync()!;
  print(emailConfirmRaw);

  // Step 1: Trim both inputs
  String emailTrimmed = emailRaw.trim();
  String emailConfirmTrimmed = emailConfirmRaw.trim();

  // Step 2: Remove digits from the trimmed email
  String emailCleaned = emailTrimmed.replaceAll(RegExp(r'\d'), '');

  // Step 3: Compare the trimmed emails
  bool isEmailMatch = emailTrimmed.compareTo(emailConfirmTrimmed) == 0;
  bool isGmail = emailTrimmed.endsWith('@gmail.com');

  // Step 4: Output string details
  print('\n--- Email Info ---');
  print('Are emails the same after trimming? $isEmailMatch');
  print('Cleaned email (no digits): $emailCleaned');
  print('In UPPERCASE: ${emailCleaned.toUpperCase()}');
  print('In lowercase: ${emailCleaned.toLowerCase()}');
  print('Length of email: ${emailCleaned.length}');

  // Make sure the cleaned email has at least 5 characters
  if (emailCleaned.length >= 5) {
    print('First 5 characters: ${emailCleaned.substring(0, 5)}');
  } else {
    print('Email is too short to extract first 5 characters.');
  }

  print('Is this a Gmail address? $isGmail');

  // Step 5: Score section
  print('\nEnter your score:');
  String scoreText = stdin.readLineSync()!;
  int score = int.parse(scoreText);
  score += 20;

  print('\nFinal score after bonus: $score');
  print('Did you reach 100 or more? ${score >= 100}');
}
