class Book{
  String title = '';
  String author = '';
  bool isBorrowed = false;

  Book({
    required this.title,
    required this.author,
  });


void borrowBook() {
  if (!isBorrowed) {
    print('Book borrowed successfully.');
    isBorrowed = true;
  } else {
    print('Book is already borrowed.');
  }
}

void returnBook() {
  if (isBorrowed) {
    print('Book retuen successfullly.');
    isBorrowed = false;
  } else {
    print('Book is already in the library.');
  }
}

void showDetails() {
  if (isBorrowed) {
    print('Status: Available.');
  }
  print('Title: $title');
  print('Author: $author');
  print('IsBorrowed: $isBorrowed');
}
}

void main() {
  List<Book> library = [
    Book(
      title: 'Atomic Habit',
      author: 'James Clear',
    ),
    Book(
      title: 'Rich Dad',
      author: 'Robert K',
    ),
    Book(
      title: 'Deep Thinking',
      author: 'John Harry',
    ),
  ];
  for (Book book in library) {
    book.showDetails();
    book.borrowBook();
    book.showDetails();
    book.returnBook();
    book.showDetails();
    print('-------------------');
  }
}