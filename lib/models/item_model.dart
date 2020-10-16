class Item {
  final String imageUrl, title, available;
  final int price;
  List<Dealer> dealers;

  Item({
    this.title,
    this.imageUrl,
    this.price,
    this.available,
    this.dealers,

});
}

class Dealer {
  final String name, imageUrl, place;
  final int price;

  Dealer({
    this.name,
    this.imageUrl,
    this.price,
    this.place,
});
}

List<Dealer> myDealers = [
   Dealer(
     name: "Ikenna",
     imageUrl: 'lib/assets/images/bitcoin.jpeg',
     price: 500,
     place: "Lagos",
   ),
  Dealer(
      name: "Ichie",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 400,
    place: "Aba",
  ),
  Dealer(
      name: "Umeh",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 550,
    place: "PortHarcourt",
  ),
  Dealer(
      name: "Eightking",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 560,
      place: "Abuja",
  ),
  Dealer(
      name: "Amaka",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 300,
    place: "Jos",
  ),
  Dealer(
      name: "Sir Kay",
      imageUrl: 'lib/assets/images/bitcoin.jpeg',
      price: 450,
    place: "Benin",
  ),
];
List<Item> items = [
  Item(
    title: 'Bitcoin',
    price: 234,
    available: "Available",
    imageUrl: "lib/assets/images/bitcoin.jpeg",
    dealers: myDealers,
  ),
  Item(
    title: 'Ethereum',
    price: 245,
    available: "Available",
    imageUrl: "lib/assets/images/ethereum.jpeg",
    dealers: myDealers,
  ),
  Item(
    title: 'Desktop',
    price: 345,
    available: "Available",
    imageUrl: "lib/assets/images/desktop.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Keyboard 1',
    price: 234,
    available: "Available",
    imageUrl: "lib/assets/images/keyboard.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Keyboard 2',
    price: 245,
    available: "Available",
    imageUrl: "lib/assets/images/keyboard-2.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop',
    price: 245,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-4.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop',
    price: 345,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-1.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 2',
    price: 234,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-2.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 3',
    price: 245,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-3.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 4',
    price: 345,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-4.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Laptop 5',
    price: 345,
    available: "Available",
    imageUrl: "lib/assets/images/laptop-5.jpg",
    dealers: myDealers,
  ),
  Item(
    title: 'Stock',
    price: 345,
    available: "Available",
    imageUrl: "lib/assets/images/stock_chart.jpg",
    dealers: myDealers,
  ),

];