class Product {
  final int id, price;
  final String title, description, image, nicotin;

  Product(
      {required this.nicotin,
      required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 40000,
    title: "Bluee Rasberry",
    image: "assets/vape8.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 50000,
    title: "Grape Fruit",
    image: "assets/vape11.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 30000,
    title: "Grape Lechy",
    image: "assets/vape12.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 45000,
    title: "Green Aple",
    image: "assets/vape13.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 5,
    price: 87000,
    title: "Honey Melon",
    image: "assets/vape14.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];

// list of product freebase
// for our demo
List<Product> product_freebase = [
  Product(
    id: 1,
    price: 40000,
    title: "Bluee Rasberry",
    image: "assets/vape8.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 68000,
    title: "Grape Fruit",
    image: "assets/vape11.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 39000,
    title: "Grape Lechy",
    image: "assets/vape12.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 45000,
    title: "Green Aple",
    image: "assets/vape13.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 5,
    price: 87000,
    title: "Honey Melon",
    image: "assets/vape14.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 6,
    price: 40000,
    title: "Lemonnade",
    image: "assets/vape18.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 7,
    price: 68000,
    title: "Pineapple",
    image: "assets/vape21.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 8,
    price: 39000,
    title: "Strobbery",
    image: "assets/vape23.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 45000,
    title: "Trofic Manggo",
    image: "assets/vape6.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 10,
    price: 87000,
    title: "Manggoya",
    image: "assets/vape1.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 11,
    price: 45000,
    title: "Ciberate",
    image: "assets/vape2.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 12,
    price: 87000,
    title: "Watermelon",
    image: "assets/vape4.jpg",
    nicotin: "Nicotin : 15 MG, 30 MG, 60 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];

// list of product slatnic
// for our demo
List<Product> product_saltNic = [
  Product(
    id: 1,
    price: 40000,
    title: "Aple & Pear",
    image: "assets/vape7.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 68000,
    title: "Bublegam",
    image: "assets/vape5.png",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 39000,
    title: "Caramel Tobacco",
    image: "assets/vape9.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 45000,
    title: "Cotton Candy",
    image: "assets/vape10.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 5,
    price: 87000,
    title: "Lechy",
    image: "assets/vape15.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 6,
    price: 40000,
    title: "Lemon Tart",
    image: "assets/vape16.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 7,
    price: 68000,
    title: "Lemonade",
    image: "assets/vape17.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 8,
    price: 39000,
    title: "Manggo Salt",
    image: "assets/vape19.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 45000,
    title: "Mint Ice",
    image: "assets/vape20.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 10,
    price: 87000,
    title: "Silver black",
    image: "assets/vape22.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 11,
    price: 45000,
    title: "Watermelon Strawbery",
    image: "assets/vape3.jpg",
    nicotin: "Nicotin : 3 MG, 6 MG, 9 MG",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
