import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'BeveragesClasses.dart';

class Bev extends ChangeNotifier{

  final List<Beveragess> _menus = [
 Beveragess(BevDes: "Croissant: A flaky, buttery pastry of French origin, known for its crescent shape and light, airy texture, perfect for pairing with coffee or enjoying on its own.",
     BevImagePath: "lib/images/Bakery/Crossiant.jpg",
     category: BevCategory.Bakery,
     Bevname: "Crossiant",
     BevPrice: 99,
     Bevrating: 4.8,
     addons: [],
     sizeCategory: [],
     quantity: 1
 ),
    Beveragess(BevDes: "Pretzels: Twisted bread snacks typically seasoned with salt, offering a crunchy texture and savory flavor, enjoyed as a satisfying snack or paired with dips.",
        BevImagePath: "lib/images/Bakery/Pretzels.jpg",
        category: BevCategory.Bakery,
        Bevname: "Pretzels",
        BevPrice: 350,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "Puff Pastry: A versatile and flaky pastry made from laminated dough consisting of many layers of butter and dough, resulting in a light, crisp texture when baked. Often used in both sweet and savory dishes such as pies, tarts, and pastries.",
        BevImagePath: "lib/images/Bakery/Puff-Pastry.jpg",
        category: BevCategory.Bakery,
        Bevname: "Puff-Pastry",
        BevPrice: 150,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "Whoopie Pie: A classic American dessert consisting of two soft, cake-like cookies sandwiched together with a creamy filling, such as frosting or marshmallow fluff. Originating from the northeastern United States, Whoopie Pies are often enjoyed as a sweet treat or dessert.",
        BevImagePath: "lib/images/Bakery/Whoopie Pie.jpg",
        category: BevCategory.Bakery,
        Bevname: "Whoopie Pie",
        BevPrice: 200,
        Bevrating: 4.3,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "Daiquiri: A classic cocktail made with rum, lime juice, and simple syrup or sugar. It is typically served shaken with ice and strained into a chilled cocktail glass, garnished with a lime wheel or twist. The Daiquiri is known for its refreshing and tangy flavor, making it a popular choice for warm weather and tropical settings.",
        BevImagePath: "lib/images/Drinks/daiquiri.jpg",
        category: BevCategory.Drinks,
        Bevname: "daiquiri",
        BevPrice: 149,
        Bevrating: 4.3,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "Lemonade: A refreshing beverage made from freshly squeezed lemon juice, water, and sugar. It is often served over ice and garnished with a lemon slice. Lemonade can vary in sweetness and tartness depending on the ratio of lemon juice to sugar, and it is enjoyed as a thirst-quenching drink, especially during hot summer days.",
        BevImagePath: "lib/images/Drinks/Lemonade.jpg",
        category: BevCategory.Drinks,
        Bevname: "Lemonade",
        BevPrice: 139,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "Margarita: A classic cocktail made with tequila, lime juice, and triple sec or orange liqueur, often served in a salt-rimmed glass. It is known for its tangy and citrusy flavor, with a balance of sweet and sour notes. Margaritas are a popular choice for social gatherings and are often enjoyed on festive occasions or as a refreshing drink on a warm day.",
        BevImagePath: "lib/images/Drinks/Magarita.jpg",
        category: BevCategory.Drinks,
        Bevname: "Margarita",
        BevPrice: 149,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: " A refreshing cocktail made with white rum, sugar, lime juice, soda water, and mint. It's known for its combination of sweetness, citrusy flavor, and minty freshness.",
        BevImagePath: "lib/images/Drinks/Mojito.jpg",
        category: BevCategory.Drinks,
        Bevname: "Mojito",
        BevPrice: 149,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A classic coffee beverage made by diluting espresso with cold water, resulting in a bold and robust flavor with a smoother taste compared to regular espresso.",
        BevImagePath: "lib/images/Iced/Iced Americano.jpg",
        category: BevCategory.Iced,
        Bevname: "Iced Americano",
        BevPrice: 159,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: " Coffee that is brewed hot and then cooled down with ice, often served with milk or cream. It's a popular choice for a refreshing caffeine boost on hot days.",
        BevImagePath: "lib/images/Iced/Iced Coffee.jpg",
        category: BevCategory.Iced,
        Bevname: "Iced Coffee",
        BevPrice: 149,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A sweet treat made from cocoa beans that have been roasted, ground, and processed into a smooth, creamy paste. It's enjoyed in various forms such as bars, drinks, and desserts.",
        BevImagePath: "lib/images/Shakes/Chochklate.jpg",
        category: BevCategory.Shakes,
        Bevname: "Chocolate",
        BevPrice: 149,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: " A creamy and indulgent milkshake that combines vanilla ice cream with orange juice or orange-flavored syrup, reminiscent of the classic creamsicle popsicle.",
        BevImagePath: "lib/images/Shakes/Creamsicle Milkshakes.jpg",
        category: BevCategory.Shakes,
        Bevname: "Creamsicle Milkshakes",
        BevPrice: 159,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A decadent milkshake made with vanilla ice cream, milk, and crushed Oreo cookies, resulting in a rich and creamy beverage with chunks of chocolate cookie goodness.",
        BevImagePath: "lib/images/Shakes/oreo.jpg",
        category: BevCategory.Shakes,
        Bevname: "Oreo Shake",
        BevPrice: 149,
        Bevrating: 4.0,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: " A sweet and juicy fruit known for its vibrant red color and refreshing taste. It's often eaten fresh, used in desserts, or blended into smoothies and milkshakes.",
        BevImagePath: "lib/images/Shakes/Strawberry.jpg",
        category: BevCategory.Shakes,
        Bevname: "Strawberry",
        BevPrice: 149,
        Bevrating: 4.5,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A type of tea that is more oxidized than green, oolong, and white teas, resulting in a stronger flavor and darker color. It's commonly enjoyed with or without milk and sugar.",
        BevImagePath: "lib/images/Tea/Black Tea.jpg",
        category: BevCategory.Tea,
        Bevname: "Black Tea",
        BevPrice: 59,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "An herbal tea made from dried chamomile flowers, known for its calming and soothing properties. It's often enjoyed as a bedtime beverage to promote relaxation and sleep.",
        BevImagePath: "lib/images/Tea/Chamomile tea.jpg",
        category: BevCategory.Tea,
        Bevname: "Chamomile tea",
        BevPrice: 59,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A type of tea made from Camellia sinensis leaves that have undergone minimal oxidation during processing. It's prized for its antioxidant properties and delicate flavor.",
        BevImagePath: "lib/images/Tea/Green Tea.jpg",
        category: BevCategory.Tea,
        Bevname: "Green Tea",
        BevPrice: 59,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),
    Beveragess(BevDes: "A herbal tea made from dried chrysanthemum flowers, known for its floral aroma and slightly sweet taste. It's popular in East Asian cultures and is believed to have various health benefits",
        BevImagePath: "lib/images/Tea/Chrysanthemum tea.jpg",
        category: BevCategory.Tea,
        Bevname: "Chrysanthemum tea",
        BevPrice: 59,
        Bevrating: 4.2,
        addons: [],
        sizeCategory: [],
        quantity: 1
    ),



  ];


// menu
  List<Beveragess> get menus => _menus;

  // addons
  List<BevAddon> get addons {
    return _menus.expand((beverages) => beverages.addons).toList();
  }
  List<BevAddon> get coffeeAddons => addons;

  List<BevSize> get size{
    return _menus.expand((beverages) => beverages.sizeCategory).toList();
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
