
class Book {
  String title;
  String author;
  
  double _price;

  Book(this.title, this.author, this._price);

  double get price => _price;

  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print('Error: Price must be greater than zero.');
    }
  }

  void displayInfo() {
    print('Title: $title | Author: $author | Price: ₱${_price.toStringAsFixed(2)}');
  }
}

void main() {
  print('==============================================');
  print('          LIBRARY MANAGEMENT SYSTEM           ');
  print('              Object-Oriented OOP             ');
  print('==============================================\n');

  List<Book> bookCatalog = [
    Book('Mobile Development', 'Warren A.', 450.0),
    Book('Python Programming 2', 'Paulo P..', 550.0),
  ];

  bookCatalog.add(Book('Data Mining', 'Emelbe M.', 600.0));


  print('--- Current Book Catalog ---');
  for (int i = 0; i < bookCatalog.length; i++) {
    print('Book #${i + 1}:');
    bookCatalog[i].displayInfo(); 
  }

  print('\n--- Testing Encapsulation (Updating Price) ---');
  print('Original price of "${bookCatalog[0].title}": ₱${bookCatalog[0].price}');
  
  // Updating using the setter
  bookCatalog[0].price = 480.0;
  print('Updated price: ₱${bookCatalog[0].price}');
  
  print('\n==============================================');
  print('Program executed successfully.');
}