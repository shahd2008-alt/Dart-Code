import 'dart:io';

void main() {
  // Step 1: Read the user's username
  print('Enter your username (with spaces or digits):');
  String usernameRaw = stdin.readLineSync()!;
  print(usernameRaw);

  // Step 2: Read username again to confirm
  print('Re-enter your username:');
  String usernameConfirmRaw = stdin.readLineSync()!;
  print(usernameConfirmRaw);

  // Step 3: Trim both usernames (remove extra spaces)
  String usernameTrimmed = usernameRaw.trim();
  String usernameConfirmTrimmed = usernameConfirmRaw.trim();

  // Step 4: Remove digits from username
  String usernameCleaned = usernameTrimmed.replaceAll(RegExp(r'\d'), '');

  // Step 5: Compare the trimmed usernames
  bool isSameUsername = usernameTrimmed.compareTo(usernameConfirmTrimmed) == 0;

  // Step 6: Display username details
  print('\n--- Username Info ---');
  print('Are usernames the same after trimming? $isSameUsername');
  print('Cleaned username (no digits): $usernameCleaned');
  print('In UPPERCASE: ${usernameCleaned.toUpperCase()}');
  print('In lowercase: ${usernameCleaned.toLowerCase()}');
  print('Length of username: ${usernameCleaned.length}');

  // Step 7: Display first 4 characters (only if username is long enough)
  if (usernameCleaned.length >= 4) {
    print('First 4 characters: ${usernameCleaned.substring(0, 4)}');
  } else {
    print('Username is too short to show 4 characters.');
  }

  // Step 8: Read number of messages sent
  print('\nEnter number of messages you sent today:');
  String messageText = stdin.readLineSync()!;
  int messageCount = int.parse(messageText);

  print('Original message count: $messageCount');

  // Step 9: Add 10 bonus messages
  messageCount += 10;
  print('Final message count after bonus: $messageCount');

  // Step 10: Determine messaging level based on total messages
  print('\n--- Messaging Level ---');
  if (messageCount >= 100) {
    print('Your messaging level: Legend Level');
  } else if (messageCount >= 50) {
    print('Your messaging level: Pro Level');
  } else {
    print('Your messaging level: Beginner Level');
  }
}
