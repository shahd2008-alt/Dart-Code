import 'dart:io';

void main() {
  // Step 1: Get user's name
  print('Enter your name:');
  String? name = stdin.readLineSync()!;
  print(name);
  print('\n');

  // Step 2: Get number of books
  print('How many books do you want to add?');
  int numBooks = int.parse(stdin.readLineSync()!);
  print(numBooks);

  List<String> listBooks = [];

  // Step 3: Add books using a for loop
  for (int book = 1; book <= numBooks; book++) {
    print('Enter book $book:');
    String books = stdin.readLineSync()!;
    print(books);
    listBooks.add(books);
  }

  print('\n');

  // Step 4: Use List methods
  print('First book: ${listBooks.first}');
  print('Last book: ${listBooks.last}');

  if (listBooks.isNotEmpty) {
    print('Your list is not empty.');
  } else {
    print('Your list is empty.');
  }

  print('You have ${listBooks.length} books.\n');

  // Step 5: Show list in reverse
  print('Books in reverse:');
  for (var book in listBooks.reversed) {
    print(book); // ✅ Print each reversed book
  }

  print('\n');

  // Step 6: Search for a book
  print('Do you want to search for a book? (yes/no)');
  String? response1 = stdin.readLineSync()!;
  print(response1);

  if (response1.toLowerCase() == 'yes') {
    print('Enter the book name:');
    String search = stdin.readLineSync()!;
    print(search);

    int position = listBooks.indexOf(search);

    if (position != -1) {
      print('Found at index: $position');
    } else {
      print('Book was not found in your list.');
    }
  }

  print('\n');

  // Step 7: Add more books using a while loop
  print('Do you want to add more books? (yes/no)');
  String? response2 = stdin.readLineSync();
  print(response2);

  while (response2!.toLowerCase() == 'yes') {
    print('Enter book name:');
    String newBook = stdin.readLineSync()!;
    print(newBook);

    listBooks.add(newBook);

    print('Do you want to add more books? (yes/no)');
    response2 = stdin.readLineSync()!;
  }

  // Final message
  print('\nThank you for using Book List Tracker, $name!');
}
