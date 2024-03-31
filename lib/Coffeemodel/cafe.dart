import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Coffee.dart';
class Cafe extends ChangeNotifier{

  final List<Coffee> _menu = [
    Coffee(coffeePrice: 155,
      coffeeImagePath: 'lib/images/Expresso/Capaccino.png',
      name: 'Cappuccino',  coffeeDes: 'Indulge in the rich, creamy goodness '
          'of our Cappuccino. Crafted with precision, our signature blend of '
          'espresso, steamed milk, and velvety frothed milk creates a '
          'luxurious coffee experience. Savor the perfect balance of bold '
          'espresso flavor and smooth, creamy texture, topped with a '
          'delightful sprinkle of cocoa or cinnamon.', rating: 4.5, category:
      CoffeeCategory.Expresso, quantity: 1,
        addons: [
        Addon(name: 'Extra shot of espresso', price: 59),
        Addon(name: 'Vanilla syrup', price: 39),
      ],
      sizeCategory:[
        Size(name: "Short", price: 129),
        Size(name: "Tall", price: 229),
        Size(name: "Grande", price: 359)
      ]

    ),

    Coffee(coffeePrice: 358,
      coffeeImagePath: 'lib/images/Expresso/Cortoda.jpg',
      name: 'Cortodo',  coffeeDes: 'Experience the authentic taste of Spain '
          'with our Cortado. Crafted with care, this Spanish classic combines'
          ' equal parts of rich espresso and silky steamed milk, resulting in'
          ' a perfectly balanced and creamy coffee delight. Savor the bold '
          'espresso flavor complemented by the velvety smoothness of steamed '
          'milk in every sip.', rating: 4.2, category: CoffeeCategory
      .Expresso, quantity: 1,addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]),

    Coffee(coffeePrice: 144,
      coffeeImagePath: 'lib/images/Expresso/Expresso.png',
      name: 'Expresso',  coffeeDes: 'Savor the intense richness of our '
          'Espresso. Made from finely-ground coffee beans and brewed under '
          'high pressure, our Espresso boasts a bold flavor profile and a '
          'luxurious crema. Enjoy the unparalleled depth and complexity of '
          'this classic Italian coffee, perfect for those seeking a robust '
          'and invigorating caffeine kick.', rating: 4.1, category: CoffeeCategory.Expresso, quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 159,
      coffeeImagePath: 'lib/images/Expresso/latte.jpg',
      name: 'Latte', coffeeDes: 'Indulge in the creamy perfection of our '
          'Latte. Crafted with precision, our signature blend of espresso and'
          ' steamed milk creates a velvety smooth texture with a rich, bold '
          'flavor. Whether enjoyed hot or over ice, our Latte promises a '
          'luxurious coffee experience that sure to delight your senses',
      rating: 4.8, category: CoffeeCategory.Expresso,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 274,
      coffeeImagePath: 'lib/images/Expresso/mocha.jpg',
      name: 'Mocha', coffeeDes: 'Treat yourself to the indulgent delight of '
          'our Mocha. Made with rich espresso, velvety steamed milk, and '
          'decadent chocolate syrup, our Mocha offers a perfect harmony of '
          'bold coffee flavor and luscious sweetness. Topped with a creamy '
          'foam, it is a luxurious coffee experience that satisfies both your'
          ' caffeine cravings and sweet tooth.', rating: 4.7, category:
      CoffeeCategory.Expresso,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 281,
      coffeeImagePath: 'lib/images/filter coffee/drip.jpg',
      name: 'Drip Coffee',  coffeeDes: 'Experience the classic simplicity of '
            'our Drip Coffee. Brewed using the drip method, our coffee is '
            'made by slowly pouring hot water over freshly ground beans, '
            'extracting the full flavor and aroma for a smooth and satisfying'
            ' cup. Perfect for those who appreciate the pure essence of '
            'freshly brewed coffee.', rating: 4.2, category: CoffeeCategory.Filter,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 281,
        coffeeImagePath: 'lib/images/filter coffee/Caramel Espresso Coffee.jpg',
        name: 'Caramel Expresso',  coffeeDes: 'Experience the classic simplicity of '
            'our Drip Coffee. Brewed using the drip method, our coffee is '
            'made by slowly pouring hot water over freshly ground beans, '
            'extracting the full flavor and aroma for a smooth and satisfying'
            ' cup. Perfect for those who appreciate the pure essence of '
            'freshly brewed coffee.', rating: 4.2, category: CoffeeCategory.Filter,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 281,
        coffeeImagePath: 'lib/images/filter coffee/Classic Espresso Coffee.jpg',
        name: 'Classic Expresso',  coffeeDes: 'Experience the classic simplicity of '
            'our Drip Coffee. Brewed using the drip method, our coffee is '
            'made by slowly pouring hot water over freshly ground beans, '
            'extracting the full flavor and aroma for a smooth and satisfying'
            ' cup. Perfect for those who appreciate the pure essence of '
            'freshly brewed coffee.', rating: 4.2, category: CoffeeCategory.Filter,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 281,
        coffeeImagePath: 'lib/images/filter coffee/Hazelnut Espresso Coffee.jpg',
        name: 'Hazelnut Expresso',  coffeeDes: 'Experience the classic simplicity of '
            'our Drip Coffee. Brewed using the drip method, our coffee is '
            'made by slowly pouring hot water over freshly ground beans, '
            'extracting the full flavor and aroma for a smooth and satisfying'
            ' cup. Perfect for those who appreciate the pure essence of '
            'freshly brewed coffee.', rating: 4.2, category: CoffeeCategory.Filter,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 281,
        coffeeImagePath: 'lib/images/filter coffee/Vanilla Espresso Coffee.jpg',
        name: 'Vanilla Expresso',  coffeeDes: 'Experience the classic simplicity of '
            'our Drip Coffee. Brewed using the drip method, our coffee is '
            'made by slowly pouring hot water over freshly ground beans, '
            'extracting the full flavor and aroma for a smooth and satisfying'
            ' cup. Perfect for those who appreciate the pure essence of '
            'freshly brewed coffee.', rating: 4.2, category: CoffeeCategory.Filter,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),


    Coffee(coffeePrice: 204,
      coffeeImagePath: 'lib/images/flavored coffee/Caramel Macchiato.jpg',
      name: 'Macchiato',  coffeeDes: 'Indulge in the bold simplicity of our '
            'Macchiato. Crafted with precision, our Macchiato features a shot'
            ' of rich espresso "stained" with a dollop of velvety steamed '
            'milk. Experience the perfect balance of intense espresso flavor '
            'with just a hint of creaminess in every sip.', rating: 4.5,
        category: CoffeeCategory.Expresso, quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 251,
        coffeeImagePath: 'lib/images/flavored coffee/Caramel Macchiato.jpg',
        name: 'Caramel Macchiato',  coffeeDes: 'Treat yourself to the irresistible'
            ' sweetness of our Hazelnut Latte. Made with our signature '
            'espresso, creamy steamed milk, and a delightful hazelnut '
            'flavoring, this luxurious drink offers a perfect blend of bold '
            'coffee and nutty sweetness. Indulge in the creamy richness and '
            'aromatic delight of our Hazelnut Latte today.', rating: 4.2,
        category: CoffeeCategory.Flavored,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 251,
      coffeeImagePath: 'lib/images/flavored coffee/Hazelnut Latte.jpg',
      name: 'Hazelnut Latte',  coffeeDes: 'Treat yourself to the irresistible'
            ' sweetness of our Hazelnut Latte. Made with our signature '
            'espresso, creamy steamed milk, and a delightful hazelnut '
            'flavoring, this luxurious drink offers a perfect blend of bold '
            'coffee and nutty sweetness. Indulge in the creamy richness and '
            'aromatic delight of our Hazelnut Latte today.', rating: 4.2,
        category: CoffeeCategory.Flavored,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 326,
      coffeeImagePath: 'lib/images/flavored coffee/Pumpkin Spice Latte.jpg',
      name: 'Pumpkin Spice Latte',  coffeeDes: "Pumpkin Spice Latte: A seasonal favorite featuring espresso, steamed milk, and pumpkin spice syrup, offering a rich and comforting blend with hints of cinnamon and nutmeg.", rating: 3.9, category:
        CoffeeCategory.Flavored,  quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 238,
      coffeeImagePath: 'lib/images/flavored coffee/Vanilla Latte.jpg',
      name: 'Vanilla Latte', coffeeDes: 'Indulge in the seasonal delight of '
            'our Pumpkin Spice Latte. Crafted with care, this autumn favorite'
            ' combines our signature espresso with creamy steamed milk and a '
            'delicious pumpkin spice flavoring, topped with a dollop of '
            'whipped cream. Experience the cozy warmth and irresistible '
            'sweetness of our Pumpkin Spice Latte today.', rating: 4.6,
        category:CoffeeCategory.Flavored, quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),

    Coffee(coffeePrice: 279,
      coffeeImagePath: 'lib/images/Blended coffee/Frappuccino.png',
      name: 'Frappuccino', coffeeDes: 'Experience pure refreshment with our '
  'Frappuccino. Blending our signature coffee with ice, milk, and your choice'
            ' of flavorings, this icy treat offers a creamy, indulgent '
            'texture with a satisfying caffeine kick. Perfect for hot days or'
            ' anytime you need a cool, energizing pick-me-up.', rating: 4.20,
        category: CoffeeCategory.Blended, quantity: 1,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeeDes:"Iced Coffee Blend offers a refreshing twist on traditional coffee, blending freshly brewed coffee with ice for a cool and invigorating beverage. With a touch of sweetness, this chilled treat is perfect for hot days, providing a satisfyingly smooth and bold coffee flavor. Indulge in the crisp and revitalizing taste of Iced Coffee Blend to energize your day.",
        coffeeImagePath: 'lib/images/flavored coffee/Iced.jpg',
        category: CoffeeCategory.Blended, name: "Iced Coffee Blend", coffeePrice: 230, rating: 4.5,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ],
        quantity: 1
    ),

    Coffee(coffeeDes: "Iced Coffee Blend offers a refreshing twist on traditional coffee, blending freshly brewed coffee with ice for a cool and invigorating beverage. With a touch of sweetness, this chilled treat is perfect for hot days, providing a satisfyingly smooth and bold coffee flavor. Indulge in the crisp and revitalizing taste of Iced Coffee Blend to energize your day.", coffeeImagePath: "lib/images/flavored coffee/Caramel Macchiato.jpg",
        category: CoffeeCategory.Blended, name: "Caramel Macchiato",
        coffeePrice: 289,
        rating: 4.0,addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ],
        quantity: 1),

    Coffee(coffeePrice: 367,
      coffeeImagePath: 'lib/images/Blended coffee/Coffee smoothie.jpg',
      name: 'Smoothie', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Speciality,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 367,
        coffeeImagePath: 'lib/images/cold brew/Caramel Brew Coffee.jpg',
        name: 'Caramel Brew', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Brew,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 367,
        coffeeImagePath: 'lib/images/cold brew/Classic Brew Coffee.jpg',
        name: 'Classic Brew', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Brew,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 367,
        coffeeImagePath: 'lib/images/cold brew/Hazelnut Brew Coffee.jpg',
        name: 'Hazelnut Brew', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Brew,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 367,
        coffeeImagePath: 'lib/images/cold brew/Mocha Brew Coffee.jpg',
        name: 'Mocha Brew', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Brew,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
    Coffee(coffeePrice: 367,
        coffeeImagePath: 'lib/images/cold brew/Vanilla Brew Coffee.jpg',
        name: 'Vanilla Brew', coffeeDes: 'Savor the delicious fusion of coffee and '
            'fruit with our Coffee Smoothie. Blending our rich coffee with '
            'creamy milk and a medley of fresh fruits, this refreshing drink '
            'offers a delightful balance of bold coffee flavor and fruity '
            'sweetness. Perfect for a nutritious and energizing treat on the '
            'go.', rating: 4.0, quantity: 1,  category: CoffeeCategory.Brew,
        addons: [
          Addon(name: 'Extra shot of espresso', price: 59),
          Addon(name: 'Vanilla syrup', price: 39),
        ],
        sizeCategory:[
          Size(name: "Short", price: 129),
          Size(name: "Tall", price: 229),
          Size(name: "Grande", price: 359)
        ]
    ),
  ];


// menu
List<Coffee> get menu => _menu;

  // addons
  List<Addon> get addons {
    return _menu.expand((coffee) => coffee.addons).toList();
  }
  List<Addon> get coffeeAddons => addons;

  List<Size> get size{
    return _menu.expand((coffee) => coffee.sizeCategory).toList();
  }







//OPERATIONS ----

// 1.ADD TO CART
// 2.REMOVE FROM THE CART
// 3.GET TOTAL PRICE OF CART
// 4.GET TOTAL NUMBER OF ITEM IN CART
// 5.CLEAR CART

// HELPERS----

// 1.GENERATE RECEIPTS
// 2.FORMAT DOUBLE VALUE INTO MONEY
// 3.FORMAT LIST OF ADDONS INTO A STRING SUMMARY

}
