import 'dart:io';

void main() {
  // Step 1: Ask for the user's full name
  print('Enter your full name:');
  String? nameRaw = stdin.readLineSync()!;
  print(nameRaw);

  // Step 2: Ask to confirm the name again
  print('Re-enter your name to confirm:');
  String? nameConfirmRaw = stdin.readLineSync()!;
  print('$nameConfirmRaw\n');

  // Step 3: Clean both names (trim spaces)
  String nameTrimmed = nameRaw.trim();
  String nameConfirmTrimmed = nameConfirmRaw.trim();

  // Step 4: Remove digits from the first name
  String nameCleaned = nameTrimmed.replaceAll(RegExp(r'\d'), '');

  // Step 5: Compare the two trimmed names
  bool isNameMatch = nameTrimmed.compareTo(nameConfirmTrimmed) == 0;

  // Step 6: Display cleaned name details
  print('Are names the same after trimming? $isNameMatch');
  print('Cleaned name: $nameCleaned');
  print('In UPPERCASE: ${nameCleaned.toUpperCase()}');
  print('In lowercase: ${nameCleaned.toLowerCase()}');
  print('Length of cleaned name: ${nameCleaned.length}');

  // Step 7: Show first 3 letters if name is long enough
  if (nameCleaned.length >= 3) {
    print('First 3 letters: ${nameCleaned.substring(0, 3)}');
  } else {
    print('The name is too short.');
  }

  // Step 8: Ask for number of tickets
  print('\nEnter the number of tickets you want to book:');
  String? ticketsText = stdin.readLineSync()!;
  int ticketCount = int.parse(ticketsText);
  print(ticketCount);

  // Step 9: Add 2 bonus tickets
  ticketCount += 2;
  print('Total tickets after bonus: $ticketCount');

  // Step 10: Determine the user's reward based on total tickets
  if (ticketCount >= 10) {
    print('You qualify for a VIP lounge!');
  } else if (ticketCount >= 5) {
    print('You qualify for a free snack!');
  } else {
    print('No bonus, enjoy your movie!');
  }

  // Step 11: Final thank you message
  print('\nThank you, $nameCleaned, for booking with us!');
}
