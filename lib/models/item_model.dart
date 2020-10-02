class Item {
  final String imageUrl, title, place;
  final int price;
  List<Dealer> dealers;

  Item({
    this.title,
    this.imageUrl,
    this.price,
    this.place,
    this.dealers,

});
}

class Dealer {
  final String name, imageUrl;
  final int price;

  Dealer({
    this.name,
    this.imageUrl,
    this.price,
});
}

List<Dealer> myDealers = [
   Dealer(
     name: "Richblood Thugson",
     imageUrl: 'lib/assets/images/bitcoin.jpeg',
     price: 500
   ),
  Dealer(
      name: "Alice Mark",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 400
  ),
  Dealer(
      name: "Ikenna Umeh",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 550
  ),
  Dealer(
      name: "Eightking",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 560
  ),
  Dealer(
      name: "Fallon",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 300
  ),
  Dealer(
      name: "Sir Kay",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 450
  ),
];
List<Item> items = [
  Item(
    title: 'Bitcoin',
    price: 234,
    place: "Lagos",
    imageUrl: "lib/assets/images/bitcoin.jpeg",
    dealers: myDealers,
  ),
  Item(
    title: 'Ethereum',
    price: 245,
    place: "Lagos",
    imageUrl: "lib/assets/images/ethereum.jpeg",
    dealers: myDealers,
  ),
  Item(
    title: 'Desktop',
    price: 345,
    place: "Lagos",
    imageUrl: "lib/assets/images/desktop.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Keyboard 1',
    price: 234,
    place: "Onitsha",
    imageUrl: "lib/assets/images/keyboard.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Keyboard 2',
    price: 245,
    place: "Delta",
    imageUrl: "lib/assets/images/keyboard-2.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop',
    price: 245,
    place: "Delta",
    imageUrl: "lib/assets/images/laptop-4.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop',
    price: 345,
    place: "Lagos",
    imageUrl: "lib/assets/images/laptop-1.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 2',
    price: 234,
    place: "Lagos",
    imageUrl: "lib/assets/images/laptop-2.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 3',
    price: 245,
    place: "Warri",
    imageUrl: "lib/assets/images/laptop-3.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 4',
    price: 345,
    place: "Owerri",
    imageUrl: "lib/assets/images/laptop-4.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 5',
    price: 345,
    place: "Lagos",
    imageUrl: "lib/assets/images/laptop-5.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Stock',
    price: 345,
    place: "Abuja",
    imageUrl: "lib/assets/images/stock_chart.jpg",
    dealers: myDealers,
  ),

];