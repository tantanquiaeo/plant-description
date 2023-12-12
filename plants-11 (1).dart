

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Plant {
  final int plantId;
  final String name;
  final String category;
  final String imageURL;
  final Map<String, double> nutritionalInformation;
  final List<String> recipes;
  final String description; // Added description field
  bool isFavorated;
  bool isSelected;
  // List of vitamins
  final List<String> vitamins;
  // List of facts
  final List<String> facts;
  final List<String> scientificClassification;

  

  Plant({
    required this.plantId,
    required this.name,
    required this.category,
    required this.imageURL,
    required this.nutritionalInformation,
    required this.recipes,
    required this.description, // Added description field
    this.isFavorated = false,
    this.isSelected = false,
    this.vitamins = const [],
    // Initialize with an empty list
    this.facts = const [], // Initialize with an empty list
    this.scientificClassification = const [],
  });

  set isFavorited(bool isFavorited) {}

  
 
Widget getCachedImageWidget() {
  return CachedNetworkImage(
    imageUrl: imageURL,
    placeholder: (context, url) => const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Set the color
        strokeWidth: 2.0, // Set the stroke width
      ),
    ),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}

  // List of Fruits and Vegetables data
  static List<Plant> plantList = [
    Plant(
      plantId: 0,
      name: 'Eggplant',
      category: 'Vegetables',
      imageURL: _generateImageURL('eggplant_native_long'),
      nutritionalInformation: {
        'Serving Size (g)': 566,
        'Calories': 198.0,
        'Total Fat (g)': 1.3,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.5,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0.0,
        'Sodium (mg)': 5.7,
        'Total Carbohydrates (g)': 49.0,
        'Dietary Fiber (g)': 14.0,
        'Sugars (g)': 18.0,
        'Protein (g)': 4.7,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 34.0,
        'Iron (mg)': 1.4,
        'Potassium (mg)': 696.2,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Ilocos Native Eggplant Longanisa',
        'Ginisang Talong',
        'Eggplant Adobo',
      ],
      description:
          'Eggplants, locally known as talong, have long been a staple in Ilocano cuisine, thriving in the fertile soils of the region. These slender, glossy purple vegetables are celebrated for their versatility in various dishes, from the classic Pinakbet to innovative culinary creations. Ilocanos have ingeniously incorporated eggplants into their traditional recipes, showcasing their ability to transform simple ingredients into flavorful meals. Revered for their taste and ability to absorb flavors, eggplants signify the essence of Ilocano culinary heritage, embodying the provinces rich agricultural heritage and culinary ingenuity.',
      vitamins: ['Vitamin C', 'Vitamin B-6'], // List of vitamins
      facts: [
        'Eggplants belong to the nightshade family.',
        'The bitter taste of eggplant comes from compounds called alkaloids.',
        'Eggplants are fruits, but they are often classified as vegetables in cooking.',
        'The word "eggplant" originated from the small, white varieties that resembled eggs.',
        'Eggplants are a good source of dietary fiber and antioxidants.',
      ],

      scientificClassification: [
        'Scientific name: Solanum melongena',
        'Genus: Solanum',
        'Family: Solanaceae',
        'Order: Solanales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 1,
      name: 'Apple',
      category: 'Fruits',
       imageURL: _generateImageURL('apple'),
      nutritionalInformation: {
        'Serving Size (g)': 182,
        'Calories': 95.0,
        'Total Fat (g)': 0.3,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.8,
        'Total Carbohydrates (g)': 25.0,
        'Dietary Fiber (g)': 4.4,
        'Sugars (g)': 19.0,
        'Protein (g)': 0.5,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 11.0,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 194.7,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Apple Pie',
        'Apple Crisp',
        'Apple Salad',
      ],
      description:
          'Apples are cherished in Ilocos for their sweet and crisp flesh, thriving in the regions fertile lands. While not native, Ilocos has embraced their versatility in local cuisine, from traditional apple pies to refreshing salads, highlighting the provinces openness to diverse flavors and ingredients. These apples symbolize Ilocos agricultural richness and its ability to integrate global influences while maintaining its distinct identity.',
      vitamins: [
        'Vitamin K',
        'Vitamin A',
        'Vitamin E',
        'Vitamin C',
        'Vitamin B60'
      ], // List of
      facts: [
        'There are over 7,500 varieties of apples grown around the world.',
        'Apples float in water because they are made up of 25% air.',
        'Apple trees take four to five years to produce their first fruit.',
        'The science of apple growing is called "pomology."',
        'Apple seeds contain a small amount of cyanide, but you would need to eat a lot of them for it to be harmful.',
      ],
      scientificClassification: [
        'Scientific Name: Malus domestica',
        'Genus: Malus',
        'Family: Rosaceae',
        'Order: Rosales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 2,
      name: 'Rambutan',
      category: 'Fruits',
      imageURL: _generateImageURL('rambutan'),
      nutritionalInformation: {
        'Serving Size (g)': 190,
        'Calories': 125.0,
        'Total Fat (g)': 0.8,
        'Saturated Fat (g)': 0.2,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.3,
        'Monounsaturated Fat (g)': 0.2,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.9,
        'Total Carbohydrates (g)': 31.0,
        'Dietary Fiber (g)': 2.5,
        'Sugars (g)': 29.0,
        'Protein (g)': 1.6,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 9.5,
        'Iron (mg)': 0.6,
        'Potassium (mg)': 324.9,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Rambutan Smoothie',
        'Rambutan Salad',
        'Rambutan Sorbet',
      ],
      description:
          'Rambutan, a tropical fruit native to Southeast Asia, has also made its way to the enchanting province of Ilocos in the Philippines. With its juicy and sweet taste, Rambutan offers a delightful treat to locals and visitors alike, inspiring creative dishes',
      vitamins: ['Vitamin A', 'Vitamin C'], // List of vitamins ]
      facts: [
        'Rambutan is a tropical fruit native to Southeast Asia.',
        'The name "rambutan" comes from the Malay word "rambut," which means "hair."',
        'It is closely related to other tropical fruits like lychee and longan.',
        'The outer skin of a rambutan is covered in soft, red or yellow spiky hairs.',
        'Rambutans are rich in vitamins C and antioxidants, offering various health benefits.',
      ],
      scientificClassification: [
        'Scientific Name: Nephelium lappaceum',
        'Genus: Nephelium',
        'Family: Sapindaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 3,
      name: 'Mango',
      category: 'Fruits',
      imageURL: _generateImageURL('indian_mango'),
      nutritionalInformation: {
        'Serving Size (g)': 336,
        'Calories': 202.0,
        'Total Fat (g)': 1.3,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.2,
        'Monounsaturated Fat (g)': 0.5,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 3.4,
        'Total Carbohydrates (g)': 50.0,
        'Dietary Fiber (g)': 5.4,
        'Sugars (g)': 46.0,
        'Protein (g)': 2.8,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 37.0,
        'Iron (mg)': 0.5,
        'Potassium (mg)': 564.5,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Mango Lassi',
        'Mango Chutney',
        'Mango Salsa',
      ],
      description:
          'Mangoes, have found a welcoming home in the province's tropical climate. Renowned for their succulent sweetness and vibrant hues, mangoes thrive in Ilocos, gracing local markets and tables alike. Whether enjoyed fresh, sliced into tantalizing desserts, or blended into refreshing beverages, mangoes add a burst of tropical flavor to Ilocano cuisine. Their presence symbolizes Ilocos' adaptability to embrace exotic produce, enhancing local culinary delights with their juicy and aromatic essence.',
      vitamins: ['Vitamin A', 'Vitamin C', 'Vitamin K'], // List of vitamins
      facts: [
        'Mangoes are considered one of the most popular fruits worldwide.',
        'The mango tree is native to South Asia, but it is now cultivated in many tropical and subtropical regions.',
        'There are over 1,000 different varieties of mangoes, each with its own flavor, texture, and size.',
        'Mangoes are rich in vitamins A, C, and E, as well as dietary fiber and antioxidants.',
        'The seed inside a mango is flat and large, and the fruit is typically consumed by slicing around the seed.'
      ],
      scientificClassification: [
        'Scientific Name: Mangifera indica',
        'Genus: Mangifera',
        'Family: Anacardiaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 4,
      name: 'Grapes',
      category: 'Fruits',
      imageURL: _generateImageURL('red_grapes'),
      nutritionalInformation: {
        'Serving Size (g)': 49,
        'Calories': 34.0,
        'Total Fat (g)': 0.1,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.0,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1,
        'Total Carbohydrates (g)': 8.9,
        'Dietary Fiber (g)': 0.4,
        'Sugars (g)': 7.6,
        'Protein (g)': 0.4,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 4.9,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 93.6,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Grape Salad',
        'Grape Smoothie',
        'Grape Sorbet',
      ],
      description:
          'Grapes, a luscious and vibrant fruit, have found their way into the hearts of Ilocanos in the picturesque province of Ilocos, Philippines. Cultivated amidst the regions fertile landscapes and favorable climate, red grapes thrive abundantly, offering a delightful treat to the local community. Whether enjoyed as a refreshing snack, added to colorful fruit salads, or crushed to create the regions famous grape-based products, red grapes have become an integral part of Ilocano cuisine, adding a burst of sweetness and a touch of elegance to the culinary traditions of the area.',
      vitamins: ['Vitamin C'], // List of vitamins
      facts: [
        'Grapes are one of the oldest cultivated fruits, with a history dating back thousands of years.',
        'They are available in various colors, including red, green, and purple, each offering unique flavors and nutritional profiles.',
        'Grapes are not only enjoyed fresh but are also used to make popular products like raisins, grape juice, and wine.',
        'The cultivation of grapes is a global practice, with different varieties thriving in diverse climates.',
        'The skin of grapes contains antioxidants, such as polyphenols, which contribute to their potential health benefits.',
      ],
      scientificClassification: [
        'Scientific Name: Vitis vinifera',
        'Genus: Vitis',
        'Family: Vitaceae',
        'Order: Vitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 5,
      name: 'Atis',
      category: 'Fruits',
      imageURL: _generateImageURL('atis'),
      nutritionalInformation: {
        'Serving Size (g)': 250,
        'Calories': 235.0,
        'Total Fat (g)': 0.7,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.3,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 23,
        'Total Carbohydrates (g)': 59.0,
        'Dietary Fiber (g)': 11.0,
        'Protein (g)': 5.2,
        'Calcium (mg)': 60.0,
        'Iron (mg)': 1.5,
        'Potassium (mg)': 617.5
      },
      recipes: [
        'Atis Smoothie',
        'Atis Salad',
        'Atis Sorbet',
        'Atis Custard',
      ],
      description:
          'Atis, also known as Sugarapple, is a tropical fruit that has made its mark in the lush landscapes of Ilocos, Philippines. With its unique shape and creamy white flesh, atis has become a cherished delicacy in the region. Grown abundantly in Ilocos, this delectable fruit is savored by locals and visitors alike, either enjoyed fresh or transformed into delightful desserts, showcasing the sweet and custard-like flavor that captures the essence of Ilocos tropical charm.',
      vitamins: [
        'Vitamin A',
        'Vitamin C',
        'Vitamin B1',
        'Vitamin B2',
        'Vitamin B3',
        'Vitamin B5',
        'Vitamin B6',
        'Vitamin B9'
      ], // List of vitamins
      facts: [
        'Atis is a fruit native to the tropical Americas and West Indies, but it is now cultivated in various tropical regions worldwide.',
        'It is known for its sweet and creamy white flesh, which has a custard-like texture.',
        'The fruit exterior has a scaly or knobby appearance and is generally greenish or yellowish when ripe.',
        'Atis is rich in vitamin C, B vitamins, and minerals like potassium and magnesium.',
        'The fruit is often eaten fresh or used in desserts, juices, and shakes.,'
      ],
      scientificClassification: [
        'Scientific Name: Annona squamosa',
        'Genus: Annona',
        'Family: Annonaceae',
        'Order: Magnoliales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 6,
      name: 'Avocado',
      category: 'Fruits',
      imageURL: _generateImageURL('avocado'),
      nutritionalInformation: {
        'Serving Size (g)': 201,
        'Calories': 322.0,
        'Total Fat (g)': 29.0,
        'Saturated Fat (g)': 4.3,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 3.7,
        'Monounsaturated Fat (g)': 20.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 14,
        'Total Carbohydrates (g)': 17.0,
        'Dietary Fiber (g)': 13.0,
        'Sugars (g)': 1.3,
        'Protein (g)': 4.0,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 24.0,
        'Iron (mg)': 1.1,
        'Potassium (mg)': 974.9,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Avocado Toast',
        'Guacamole',
        'Avocado Salad',
        'Avocado Smoothie',
      ],
      description:
          'Avocado, a creamy and nutritious fruit, has found its way to the beautiful province of Ilocos in the Philippines. With its rich, buttery texture and subtle nutty flavor, avocados have become a beloved addition to Ilocano cuisine. Locally known as "abukado," this versatile fruit is used in a variety of dishes, from simple avocado smoothies to indulgent avocado salads and creamy guacamole. Embraced by Ilocanos for its taste and health benefits, avocados have become a symbol of culinary creativity and a delightful part of the vibrant food culture in Ilocos.',
      vitamins: [
        'Vitamin C',
        'Vitamin E',
        'Vitamin K',
        'Vitamin B6'
      ], // List of vitamins
      facts: [
        'Avocado is a fruit that originates from Central America and Mexico, but it is now cultivated in various parts of the world with suitable climates.',
        'They are known for their creamy texture and unique flavor, often described as nutty or buttery.',
        'Avocados are nutrient-dense, containing healthy fats, vitamins (like vitamin K, vitamin E, and vitamin C), and minerals (such as potassium and folate).',
        'The Hass avocado is one of the most popular varieties, known for its rough, pebbly skin and rich, flavorful flesh.',
        'Avocados are versatile and used in a wide range of dishes, including guacamole, salads, sandwiches, and smoothies.'
      ],
      scientificClassification: [
        'Scientific Name: Persea americana',
        'Genus: Persea',
        'Family: Lauraceae',
        'Order: Laurales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 7,
      name: 'Banana',
      category: 'Fruits',
      imageURL: _generateImageURL('banana_saba'),
      nutritionalInformation: {
        'Serving Size (g)': 118,
        'Calories': 105.0,
        'Total Fat (g)': 0.4,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.2,
        'Total Carbohydrates (g)': 27.0,
        'Dietary Fiber (g)': 3.1,
        'Sugars (g)': 14.0,
        'Protein (g)': 1.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 5.9,
        'Iron (mg)': 0.3,
        'Potassium (mg)': 422.4,
        'Caffeine (mg)': 0.0
      },

      recipes: [
        'Banana Saba Chips',
        'Banana Saba Turon',
        'Banana Saba Shake',
        'Banana Saba Halaya',
      ],
      description:
          'The conducive tropical climate of Ilocos has facilitated the successful cultivation of various banana cultivars, including the popular Lakatan and Latundan varieties. These fruits have thrived in Ilocos, symbolizing the provinces agricultural diversity and their widespread adoption into local cuisine. Celebrated for their nutritional value and adaptability in cooking, bananas have seamlessly integrated themselves into Ilocano dishes, offering a taste of tropical goodness while enhancing the regions culinary repertoire.',
      vitamins: ['Vitamin B6', 'Vitamin C'], // List of vitamins
      facts: [
        'Bananas are one of the most popular fruits globally and are native to Southeast Asia.',
        'They grow on plants belonging to the Musa genus and are technically berries.',
        'Rich in potassium, vitamins C and B6, bananas are a nutritious and energy-boosting fruit.',
        'The Cavendish banana is the most common type consumed worldwide, prized for its taste, texture, and ease of transport.',
        'Bananas ripen quickly due to the ethylene gas they release, causing them to go from green to yellow and then brown.'
      ],
      scientificClassification: [
        'Scientific Name: Musa spp.',
        'Genus: Musa',
        'Family: Musaceae',
        'Order: Zingiberales',
        'Class: Liliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 8,
      name: 'Calamansi',
      category: 'Fruits',
      imageURL: _generateImageURL('Calamansi'),
      nutritionalInformation: {
        'Serving Size (g)': 67,
        'Calories': 20.0,
        'Total Fat (g)': 0.1,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.0,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.3,
        'Total Carbohydrates (g)': 7.1,
        'Dietary Fiber (g)': 1.9,
        'Sugars (g)': 1.1,
        'Protein (g)': 0.5,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 22.0,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 68.3,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Banana Saba Chips',
        'Banana Saba Turon',
        'Banana Saba Shake',
        'Banana Saba Halaya',
      ],
      description:
          'Calamansi, a small citrus fruit with a tangy and refreshing flavor, has become a cherished delight in the picturesque province of Ilocos in the Philippines. Known for its vibrant green color and petite size, calamansi holds a significant place in Ilocano cuisine and culture. Locals in Ilocos relish the zesty taste of calamansi, using its juice as a versatile ingredient in numerous dishes, such as kinilaw, and sawsawan (dipping sauce). Whether used in savory or sweet recipes, calamansi adds a burst of citrusy goodness that perfectly complements the vibrant culinary heritage of Ilocos, making it a beloved and indispensable part of the local gastronomy.',
      vitamins: ['Vitamin A', 'Vitamin C'], // List of vitamins
      facts: [
        'Calamansi is a small, round citrus fruit also known as the Philippine lime or calamondin.',
        'It is widely cultivated in the Philippines and other Southeast Asian countries for its culinary and medicinal uses.',
        'The fruit is sour and tangy, similar to a cross between a lime and a mandarin orange.',
        'Calamansi is rich in vitamin C and antioxidants, offering potential health benefits.',
        'It is used in various dishes, beverages, condiments, and as a flavoring agent in cuisines across the region.'
      ],
      scientificClassification: [
        'Scientific Name: Citrus × microcarpa',
        'Genus: Citrus',
        'Family: Rutaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 9,
      name: 'Chico',
      category: 'Fruits',
      imageURL: _generateImageURL('Chico'),
      nutritionalInformation: {
        'Serving Size (g)': 170,
        'Calories': 141.0,
        'Total Fat (g)': 1.9,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.0,
        'Monounsaturated Fat (g)': 0.9,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 20,
        'Total Carbohydrates (g)': 34.0,
        'Dietary Fiber (g)': 9.0,
        'Protein (g)': 0.8,
        'Calcium (mg)': 36.0,
        'Iron (mg)': 1.4,
        'Potassium (mg)': 328.1
      },
      recipes: [
        'Chico Smoothie',
        'Chico Pudding',
        'Chico Salad',
        'Chico Ice Cream',
      ],
      description:
          'Chico, also known as Sapota, is a tropical fruit that has made its mark in the enchanting province of Ilocos in the Philippines. Recognized for its unique brownish exterior and sweet, caramel-like flavor, Chico has become a beloved delicacy among locals in Ilocos. The fruits creamy and melt-in-your-mouth texture makes it a delightful treat on its own, or it can be used in various Ilocano desserts and beverages. Whether enjoyed fresh or transformed into mouthwatering treats like Chico ice cream and Chico shake, this tropical gem has become an essential part of Ilocano culinary traditions, offering a delightful taste of natures sweetness in the heart of Ilocos.',
      vitamins: ['Vitamin C'], // List of vitamins
      facts: [
        'Chico, also known as sapodilla, is a tropical fruit native to Mexico, Central America, and the Caribbean.',
        'It has a rough brown skin and sweet, grainy, and juicy flesh that varies in color from yellowish to brown.',
        'The fruit is rich in nutrients like dietary fiber, vitamins (such as vitamin C and vitamin E), and minerals (like potassium and copper).',
        'Chico trees are evergreen and produce fruit year-round in warm climates, thriving in tropical and subtropical regions.',
        'The fruit is commonly eaten fresh, and its flavor is often likened to a combination of pear, brown sugar, and caramel.'
      ],
      scientificClassification: [
        'Scientific Name: Manilkara zapota',
        'Genus: Manilkara',
        'Family: Sapotaceae',
        'Order: Ericales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 10,
      name: 'Dragon Fruit',
      category: 'Fruits',
      imageURL: _generateImageURL('dragon'),
      nutritionalInformation: {
        'Serving Size (g)': 100,
        'Calories': 61.0,
        'Total Fat (g)': 0.5,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.3,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 3,
        'Total Carbohydrates (g)': 15.0,
        'Dietary Fiber (g)': 3.0,
        'Sugars (g)': 9.0,
        'Protein (g)': 1.1,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 34.0,
        'Iron (mg)': 0.3,
        'Potassium (mg)': 312.0,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Dragon Fruit Smoothie Bowl',
        'Dragon Fruit Salad',
        'Dragon Fruit Salsa',
        'Dragon Fruit Sorbet',
      ],
      description:
          'Dragon Fruit, a vibrant and exotic fruit, has found its way to the picturesque province of Ilocos in the Philippines. Known for its striking pink or white flesh speckled with black seeds and its unique appearance resembling a dragons scales, this tropical delight has become a favorite among locals in Ilocos. With its subtly sweet and refreshing taste, Dragon Fruit is relished as a delightful snack on its own, or it can be used in various Ilocano dishes and desserts. Dragon Fruit adds a touch of tropical elegance to Ilocano cuisine, captivating taste buds and enriching the vibrant culinary traditions of the region.',
      vitamins: ['Vitamin A', 'Vitamin C'], // List of vitamins
      facts: [
        'Dragon fruit, also known as pitaya or pitahaya, is a tropical fruit native to Central America but is now cultivated in various tropical and subtropical regions.',
        'It belongs to the cactus family and comes in different varieties with two main types: one with white flesh and black seeds and another with red or pink flesh and black seeds.',
        'The fruit is rich in antioxidants, vitamins (such as vitamin C and vitamin E), and fiber, offering various health benefits.',
        'Dragon fruit has a unique appearance with vibrant outer skin and speckled flesh containing tiny black seeds.',
        'It is often eaten fresh or used in smoothies, salads, and other culinary creations due to its mild, slightly sweet flavor.'
      ],
      scientificClassification: [
        'Scientific Name: Hylocereus spp. and Selenicereus spp.',
        'Genus: Hylocereus and Selenicereus',
        'Family: Cactaceae',
        'Order: Caryophyllales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 11,
      name: 'Durian',
      category: 'Fruits',
      imageURL: _generateImageURL('durian'),
      nutritionalInformation: {
        'Serving Size (g)': 243,
        'Calories': 357.0,
        'Total Fat (g)': 13.0,
        'Trans Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 4.9,
        'Total Carbohydrates (g)': 66.0,
        'Dietary Fiber (g)': 9.2,
        'Protein (g)': 3.6,
        'Calcium (mg)': 15.0,
        'Iron (mg)': 1.0,
        'Potassium (mg)': 1059.5
      },
      recipes: [
        'Durian Smoothie',
        'Durian Pancake',
        'Durian Ice Cream',
      ],
      description:
          'Durian, a controversial yet flavorful fruit, has also made its presence known in the captivating province of Ilocos in the Philippines. Recognized for its large, thorny husk and its powerful aroma, durian has become a unique and adventurous choice for locals in Ilocos. Some are captivated by its rich and custard-like texture, savoring the sweet and creamy taste, while others may find its odor overwhelming. Nevertheless, durian enthusiasts in Ilocos relish the fruit as a distinctive and cherished treat, often using it in unique desserts like durian-flavored ice cream and durian pastries, adding a tropical twist to the culinary landscape of the region.',
      vitamins: ['Vitamin C', 'Vitamin B6', 'Vitamin A'], // List of vitamins
      facts: [
        'Durian is a tropical fruit native to Southeast Asia and is often referred to as the "king of fruits."',
        'Known for its strong odor, some people find it unpleasant, while others enjoy its unique aroma and taste.',
        'The fruit is large, covered in a spiky outer shell, and its creamy, custard-like flesh can vary in color from pale yellow to red.',
        'Durian is nutrient-rich, containing vitamins, minerals, healthy fats, and is a good source of energy.',
        'Despite its smell, durian has a loyal fan base and is used in various sweet and savory dishes, desserts, candies, and even ice creams.'
      ],
      scientificClassification: [
        'Scientific Name: Durio spp.',
        'Genus: Durio',
        'Family: Malvaceae',
        'Order: Malvales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 12,
      name: 'Guapple',
      category: 'Fruits',
      imageURL: _generateImageURL('Guapple'),
      nutritionalInformation: {
        'Serving Size (g)': 165,
        'Calories': 112.0,
        'Total Fat (g)': 1.6,
        'Saturated Fat (g)': 0.5,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.7,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 3.3,
        'Total Carbohydrates (g)': 24.0,
        'Dietary Fiber (g)': 8.9,
        'Sugars (g)': 15.0,
        'Protein (g)': 4.2,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 30.0,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 688.1,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Guapple Smoothie',
        'Guapple Crisp',
        'Guapple Salad',
      ],
      description:
          'Guapple, a delightful fruit that resembles a hybrid of guava and apple, has found its way to the beautiful province of Ilocos in the Philippines. Known for its unique shape and sweet, guava-like flavor, Guapple has become a beloved addition to Ilocano cuisine. Locals in Ilocos savor the juicy and refreshing taste of this fruit, enjoying it as a healthy and flavorful snack or incorporating it into various dishes and desserts. This tropical gem has become an intrinsic part of Ilocano culinary traditions, adding a burst of tropical goodness to the vibrant food culture of the region.',
     
      vitamins: ['Vitamin C', 'Vitamin A', 'Vitamin E'], // List of vitamins
      facts: [
        "Guapple is a hybrid fruit, resulting from the crossbreeding of guava (Psidium guajava) and apple (Malus domestica).",
        "The fruit combines the flavors of both guava and apple, creating a unique and delicious taste.",
        "Guapple is known for its crisp texture, similar to that of an apple, and its sweet and fragrant aroma.",
        "It is rich in vitamins, minerals, and dietary fiber, making it a nutritious choice for a snack.",
        "The fruit is often eaten fresh, and it can be used in various culinary preparations, such as salads and desserts."
      ],
      scientificClassification: [
        "Scientific Name: Psidium guajava x Malus domestica",
        "Hybrid Type: Guava-Apple Hybrid",
        "Genus: Psidium (Guava), Malus (Apple)",
        "Family: Myrtaceae (Guava), Rosaceae (Apple)",
        "Order: Myrtales (Guava), Rosales (Apple)",
        "Class: Magnoliopsida (Guava), Magnoliopsida (Apple)",
        "Phylum: Angiosperms"
      ],
    ),
    Plant(
      plantId: 13,
      name: 'Guava',
      category: 'Fruits',
      imageURL: _generateImageURL('Guava'),
      nutritionalInformation: {
        'Serving Size (g)': 165,
        'Calories': 112.0,
        'Total Fat (g)': 1.6,
        'Saturated Fat (g)': 0.5,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.7,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 3.3,
        'Total Carbohydrates (g)': 24.0,
        'Dietary Fiber (g)': 8.9,
        'Sugars (g)': 15.0,
        'Protein (g)': 4.2,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 30.0,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 688.1,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Guava Smoothie',
        'Guava Jam',
        'Guava Salad',
      ],
      description:
          'Guava, a tropical fruit with a distinctive aroma and sweet-tangy flavor, has also found its way to the enchanting province of Ilocos in the Philippines. Recognized for its green or pinkish flesh and small seeds, guava has become a beloved treat among locals in Ilocos. The fruits refreshing taste makes it a popular choice for both snacking and cooking, with Ilocanos using guava to create flavorful dishes like guava jams, guava pastries, and even guava-infused beverages. With its versatility and delightful taste, guava has become an essential ingredient that adds a tropical touch to Ilocano cuisine, making it a cherished and delectable part of the vibrant food culture in Ilocos.',
      vitamins: ['Vitamin C', 'Vitamin A', 'Vitamin E'], // List of vitamins
      facts: [
        'Guava is a tropical fruit native to Central America, but it is cultivated in various tropical and subtropical regions worldwide.',
        'It comes in different varieties, with common types being the apple guava and the strawberry guava.',
        'Guava is rich in vitamin C, dietary fiber, and antioxidants, offering various health benefits.',
        'The fruit has a unique flavor, which can range from sweet to tart, and its flesh may vary in color from white to pink to red, depending on the variety.',
        'Guavas are commonly eaten fresh, used in juices, jams, jellies, and desserts, and are also a popular ingredient in tropical cuisine.'
      ],
      scientificClassification: [
        'Scientific Name: Psidium guajava',
        'Genus: Psidium',
        'Family: Myrtaceae',
        'Order: Myrtales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 14,
      name: 'Guayabano (Soursop)',
      category: 'Fruits',
      imageURL: _generateImageURL('guyabano'),
      nutritionalInformation: {
        'Serving Size (g)': 225,
        'Calories': 149.0,
        'Total Fat (g)': 0.7,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.2,
        'Monounsaturated Fat (g)': 0.2,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 32,
        'Total Carbohydrates (g)': 38.0,
        'Dietary Fiber (g)': 7.4,
        'Sugars (g)': 30.0,
        'Protein (g)': 2.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 32.0,
        'Iron (mg)': 1.4,
        'Potassium (mg)': 625.5,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Guayabano Smoothie',
        'Guayabano Sorbet',
        'Guayabano Salad',
      ],
      description:
          'Guayabano, also known as Soursop, is a tropical fruit that has found its way to the captivating province of Ilocos in the Philippines. Recognized for its prickly green exterior and soft, creamy flesh, Guayabano has become a beloved delight among locals in Ilocos. The fruits unique combination of sweetness and tanginess makes it a refreshing treat on its own or a flavorful addition to various Ilocano dishes and desserts. Whether enjoyed fresh or used in traditional recipes like Guayabano shakes and Guayabano ice cream, this tropical gem has become an intrinsic part of Ilocano culinary traditions, adding a tropical burst of flavor to the vibrant food culture of the region.',
      vitamins: [
        'Vitamin B1 (Thiamine)',
        'Vitamin B2 (Riboflavin)',
        'Vitamin B3 (Niacin)',
        'Vitamin C'
      ], // List of vitamins
      facts: [
        'Guyabano is a tropical fruit native to the Caribbean and Central and South America, but it is cultivated in many tropical regions worldwide.',
        'It has a spiky green outer skin and soft, fibrous, white flesh with black seeds, and it is known for its unique flavor, which is a combination of sweet and tart.',
        'The fruit is rich in vitamins, particularly vitamin C, and minerals like potassium, offering potential health benefits.',
        'Guyabano is used in traditional medicine and herbal remedies for its perceived medicinal properties, including being used as a natural remedy for various health issues.',
        'It is commonly consumed fresh or used in beverages, smoothies, ice creams, and other culinary creations.'
      ],
      scientificClassification: [
        'Scientific Name: Annona muricata',
        'Genus: Annona',
        'Family: Annonaceae',
        'Order: Magnoliales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
   
    Plant(
      plantId: 15,
      name: 'Jackfruit',
      category: 'Fruits',
      imageURL: _generateImageURL('Jackfruit'),
      nutritionalInformation: {
        'Serving Size (g)': 165,
        'Calories': 157.0,
        'Total Fat (g)': 1.1,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.2,
        'Monounsaturated Fat (g)': 0.3,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 3.3,
        'Total Carbohydrates (g)': 38.0,
        'Dietary Fiber (g)': 2.5,
        'Sugars (g)': 31.0,
        'Protein (g)': 2.8,
        'Calcium (mg)': 40.0,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 739.2
      },
      recipes: [
        'Jackfruit Smoothie',
        'Ripe Jackfruit Salad',
        'Jackfruit Custard',
      ],
      description:
          'Jackfruit is a sweet and tropical fruit known for its large size and delicious flavor. It is a popular choice in the province of Ilocos, where locals enjoy its unique taste and versatility in various dishes and desserts. Whether used in refreshing smoothies, mixed into a delectable salad, or transformed into mouthwatering custard, ripe jackfruit adds a delightful tropical touch to Ilocano cuisine, captivating taste buds and enriching the vibrant food culture of the region.',
      vitamins: [
        'Vitamin C',
        'Vitamin B1',
        'Vitamin B2',
        'Vitamin B3',
        'Vitamin B5',
        'Vitamin B6',
        'Vitamin B9'
      ], // List of vitamins
      facts: [
        'Jackfruit is a tropical fruit native to South and Southeast Asia but is now cultivated in various tropical regions worldwide.',
        'It is the largest tree fruit in the world and can grow to a substantial size, weighing up to 80 pounds (36 kilograms).',
        'The fruit has a spiky exterior and consists of numerous yellow flesh-covered seeds, which are edible when ripe.',
        'Jackfruit is rich in nutrients like vitamin C, potassium, and dietary fiber, offering various health benefits.',
        'It is a versatile fruit used in both sweet and savory dishes, including curries, stews, desserts, and as a meat substitute in vegetarian and vegan dishes due to its meaty texture.'
      ],
      scientificClassification: [
        'Scientific Name: Artocarpus heterophyllus',
        'Genus: Artocarpus',
        'Family: Moraceae',
        'Order: Rosales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 16,
      name: 'Lanzones',
      category: 'Fruits',
      imageURL: _generateImageURL('lanzones'),
      nutritionalInformation: {
        'Serving Size (g)': 24.6,
        'Calories': 15.6,
        'Total Fat (g)': 0.1,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.0,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 0,
        'Total Carbohydrates (g)': 3.9,
        'Dietary Fiber (g)': 0.5,
        'Sugars (g)': 3.3,
        'Protein (g)': 0.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 3.3,
        'Iron (mg)': 0.1,
        'Potassium (mg)': 54.6,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Lanzones Smoothie',
        'Lanzones Salad',
        'Lanzones Custard',
      ],
      description:
          'Lanzones is a sweet and tropical fruit native to Southeast Asia. It is highly appreciated in Ilocos, where it grows abundantly. With its small, round shape and delicate golden skin, lanzones entices the taste buds with its juicy and succulent flesh. Whether blended into a refreshing smoothie, mixed into a delectable salad, or transformed into mouthwatering custard, lanzones adds a delightful tropical touch to Ilocano cuisine, capturing the essence of Ilocos rich and diverse food culture.',
      vitamins: [
        'Vitamin B1 (Thiamin)',
        'Vitamin B2 (Riboflavin)',
        'Vitamin B3 (Niacin)',
        'Vitamin B9 (Folates)'
      ], // List of vitamins
      facts: [
        'Lanzones is a tropical fruit native to Southeast Asia, particularly in countries like the Philippines, Malaysia, and Indonesia.',
        'The fruit grows in clusters on trees and has a thin, yellow to light brown skin that is peeled to reveal translucent, juicy segments.',
        'Lanzones are known for their sweet taste, reminiscent of a mix between grapes and lychees.',
        'Lanzones are typically eaten fresh as a snack or dessert, and they are also used in jams, preserves, and other culinary creations.'
      ],
      scientificClassification: [
        'Scientific Name: Lansium domesticum',
        'Genus: Lansium',
        'Family: Meliaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    
    Plant(
      plantId: 17,
      name: 'Mangosteen',
      category: 'Fruits',
      imageURL: _generateImageURL('mangosteen'),
      nutritionalInformation: {
        'Serving Size (g)': 76,
        'Calories': 55.0,
        'Total Fat (g)': 0.4,
        'Trans Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 5.3,
        'Total Carbohydrates (g)': 14.0,
        'Dietary Fiber (g)': 1.4,
        'Protein (g)': 0.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 9.1,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 36.5
      },
      recipes: [
        'Mangosteen Smoothie',
        'Mangosteen Salad',
        'Mangosteen Sorbet',
      ],
      description:
          'Mangosteen is a delectable and exotic fruit highly regarded in the captivating province of Ilocos, Philippines. Adored for its unique purple-brown rind and exquisite sweet-tart flavor, Mangosteen entices the palate of locals in Ilocos. This tropical gem is enjoyed fresh as a delightful snack, added to vibrant salads, and transformed into refreshing smoothies. Moreover, Mangosteen can be used to create mouthwatering sorbets, providing a perfect balance of sweetness and tanginess. As a cherished part of Ilocano cuisine, Mangosteen embodies the essence of Ilocos culinary delights, showcasing the provinces love for delectable and extraordinary produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin B5 (Niacin)',
        'Vitamin B2 (Riboflavin)',
        'Vitamin B1 (Thiamin)'
      ], // List of vitamins
      facts: [
        'Mangosteen is a tropical fruit native to Southeast Asia, particularly in countries like Thailand, Indonesia, Malaysia, and the Philippines.',
        'It has a thick, purple rind and soft, juicy, snow-white segments of flesh inside, often described as sweet and tangy with a hint of peach and citrus.',
        'Mangosteen is known as the "queen of fruits" and is highly prized for its delicious flavor and nutritional benefits.',
        'The fruit is rich in antioxidants, vitamins (such as vitamin C), and minerals, offering potential health benefits.',
        'Mangosteen is typically eaten fresh as a dessert fruit and is also used in juices, jams, and various culinary creations.'
      ],
      scientificClassification: [
        'Scientific Name: Garcinia mangostana',
        'Genus: Garcinia',
        'Family: Clusiaceae',
        'Order: Malpighiales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 18,
      name: 'Ampalaya',
      category: 'Vegetables',
      imageURL: _generateImageURL('ampalaya'),
      nutritionalInformation: {
        'Serving Size (g)': 124,
        'Calories': 24.0,
        'Total Fat (g)': 0.2,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 7.4,
        'Total Carbohydrates (g)': 5.4,
        'Dietary Fiber (g)': 2.5,
        'Sugars (g)': 2.4,
        'Protein (g)': 1.0,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 11.0,
        'Iron (mg)': 0.5,
        'Potassium (mg)': 395.6,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Ilocos Ampalaya Salad',
        'Pinakbet with Ampalaya',
        'Ampalaya Guisado',
      ],
      description:
          'Ampalaya, also known as bitter melon, is an integral part of Ilocos cuisine. With its distinctive bitterness, Ampalaya adds a unique depth of flavor to Ilocano dishes. The captivating province of Ilocos, Philippines, embraces Ampalaya as a cherished vegetable that embodies the region\'s culinary heritage. Ampalaya shines in dishes like the iconic Ilocos Ampalaya Salad, where its bitterness is balanced with a medley of flavors. It also takes center stage in Pinakbet, a traditional vegetable stew that features Ampalaya alongside other local ingredients. Ampalaya Guisado, a simple stir-fry, showcases the vegetable\'s versatility and health benefits. Ampalaya captures the essence of Ilocos\' rich gastronomic traditions, making it an essential element in the province\'s extraordinary cuisine.',
      vitamins: [
        'Vitamin A',
        'Vitamin C',
        'Thiamine (B1)',
        'Riboflavin (B2)',
        'Niacin (B3)',
        'Folate (B9)'
      ], // List of vitamins
      facts: [
        'Ampalaya is a vine-grown vegetable commonly found in tropical and subtropical regions, including parts of Asia, Africa, and the Caribbean.',
        'It is known for its distinct bitter taste and is used in various cuisines for its health benefits.',
        'Ampalaya is rich in nutrients like vitamins A, C, and several B vitamins, as well as minerals like iron and potassium.',
        'It is believed to have medicinal properties and is used in traditional medicine for its potential to help manage blood sugar levels and improve digestion.',
        'In culinary preparations, ampalaya is often cooked in stir-fries, soups, or stuffed and can also be juiced.'
      ],
      scientificClassification: [
        'Scientific Name: Momordica charantia',
        'Genus: Momordica',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 19,
      name: 'Banana Blossom',
      category: 'Vegetables',
      imageURL: _generateImageURL('banana_blossom'),
      nutritionalInformation: {
        'Serving Size (g)': 118,
        'Calories': 105.0,
        'Total Fat (g)': 0.4,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.2,
        'Total Carbohydrates (g)': 27.0,
        'Dietary Fiber (g)': 3.1,
        'Sugars (g)': 14.0,
        'Protein (g)': 1.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 5.9,
        'Iron (mg)': 0.3,
        'Potassium (mg)': 422.4,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Ilocos Banana Blossom Salad',
        'Pinakbet with Banana Blossom',
        'Ginisang Puso ng Saging',
      ],
      description:
          'Banana Blossom, known locally as "Puso ng Saging," is a treasured ingredient in Ilocos cuisine. This unique vegetable, harvested from the banana plant, holds a special place in the hearts of Ilocanos. With its tender and slightly bitter taste, Banana Blossom is a key component of Ilocano dishes. The captivating province of Ilocos, Philippines, celebrates Banana Blossom in recipes like the iconic Ilocos Banana Blossom Salad, which combines its delicate flavor with a variety of ingredients. It also plays a significant role in Pinakbet, a traditional stew that highlights the vegetable\'s distinctive taste. Ginisang Puso ng Saging, a sautéed dish, showcases Banana Blossom\'s versatility. With its nutritional value and rich cultural significance, Banana Blossom embodies the essence of Ilocos\' culinary heritage, reflecting the region\'s love for exceptional and nourishing produce.',
      vitamins: ['Vitamin B6', 'Vitamin C'], // List of vitamins
      facts: [
        'Banana blossom is the flower of the banana plant and is commonly used as a vegetable in Southeast Asian cuisine.',
        'It is a large, purple-skinned flower that grows at the end of a cluster of bananas and is composed of tightly packed, tender leaves or petals.',
        'Banana blossom is rich in vitamins, minerals, and antioxidants, offering potential health benefits such as improving heart health and aiding digestion.',
        'In cooking, it is often prepared by removing the tough outer bracts and using the tender inner petals in various dishes like curries, salads, stir-fries, and soups.',
        'The flower is known for its unique taste and texture, often described as slightly bitter and with a meaty or artichoke-like flavor.'
      ],
      scientificClassification: [
        'Scientific Name: Musa spp.',
        'Genus: Musa',
        'Family: Musaceae',
        'Order: Zingiberales',
        'Class: Liliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 20,
      name: 'Chayote',
      category: 'Vegetables',
      imageURL: _generateImageURL('chayote'),
      nutritionalInformation: {
        'Serving Size (g)': 160,
        'Calories': 38.0,
        'Total Fat (g)': 0.8,
        'Saturated Fat (g)': 0.0,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.0,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.6,
        'Total Carbohydrates (g)': 8.1,
        'Dietary Fiber (g)': 4.5,
        'Sugars (g)': 3.0,
        'Protein (g)': 1.0,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 21.0,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 276.8,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Ilocos Chayote Salad',
        'Ginisang Sayote',
        'Chayote Guisado',
      ],
      description:
          'Chayote, locally known as "Sayote," is a beloved vegetable in Ilocos cuisine, deeply rooted in the traditions of the region. Its mild and versatile flavor makes it a staple ingredient in Ilocano dishes. The captivating province of Ilocos, Philippines, honors Chayote in recipes like the iconic Ilocos Chayote Salad, where its crisp texture and subtle taste are paired with vibrant ingredients. Ginisang Sayote, a sautéed dish, showcases Chayote\'s ability to absorb flavors and enhance the overall taste of a meal. Chayote Guisado, a simple stir-fry, highlights the vegetable\'s nutrient-rich profile. With its exceptional nutritional value and culinary adaptability, Chayote reflects the essence of Ilocos\' gastronomy, embodying the region\'s commitment to wholesome and delightful produce.',
      vitamins: ['Vitamin C', 'Vitamin K', 'Vitamin B6'], // List of vitamins
      facts: [
        'Chayote, also known as vegetable pear or christophine, is a green, wrinkled fruit belonging to the gourd family, commonly cultivated in Central America and parts of Asia.',
        'It has a mild taste and a firm texture, often likened to a cross between a cucumber and a potato.',
        'Chayote is low in calories and a good source of dietary fiber, vitamins C and K, as well as various minerals like potassium and manganese.',
        'The entire fruit, including the flesh, seeds, and skin, is edible and used in various culinary dishes such as salads, soups, stir-fries, and pickles.',
        'Chayote is versatile and can be prepared in different ways, both raw and cooked, offering a subtle addition to numerous recipes.'
      ],
      scientificClassification: [
        'Scientific Name: Sechium edule',
        'Genus: Sechium',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 21,
      name: 'Cucumber',
      category: 'Vegetables',
      imageURL: _generateImageURL('cucumber'),
      nutritionalInformation: {
        'Serving Size (g)': 201,
        'Calories': 30.0,
        'Total Fat (g)': 0.2,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0.0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 4,
        'Total Carbohydrates (g)': 7.3,
        'Dietary Fiber (g)': 1.0,
        'Sugars (g)': 3.4,
        'Protein (g)': 1.3,
        'Vitamin D (mcg)': 0.0,
        'Calcium (mg)': 32,
        'Iron (mg)': 0.6,
        'Potassium (mg)': 295.5,
        'Caffeine (mg)': 0.0
      },
      recipes: [
        'Ilocos Cucumber Salad',
        'Ginisang Pipino',
        'Cucumber and Tomato Bagoong',
      ],
      description:
          'Cucumber, or "Pipino" in the local language, holds a special place in Ilocos cuisine. Its crisp texture and refreshing taste make it a favorite ingredient in Ilocano dishes. The captivating province of Ilocos, Philippines, celebrates Cucumber in recipes like the iconic Ilocos Cucumber Salad, where its hydrating properties are combined with the flavors of the region. Ginisang Pipino, a sautéed dish, showcases Cucumber\'s ability to absorb flavors and enhance the overall taste of a meal. Cucumber and Tomato Bagoong, a traditional side dish, highlights the vegetable\'s versatility. With its cooling nature and valuable nutritional content, Cucumber embodies the essence of Ilocos\' culinary heritage, reflecting the region\'s commitment to simple and nourishing produce.',
      vitamins: [
        'Vitamin B1',
        'Vitamin B2',
        'Vitamin B3',
        'Vitamin B5',
        'Vitamin B6',
        'Vitamin C'
      ], // List of vitamins
      facts: [
        'Cucumbers are cylindrical fruits belonging to the gourd family, commonly cultivated worldwide for culinary purposes.',
        'They have a high water content, providing hydration, and are low in calories, making them a refreshing and healthy snack.',
        'Cucumbers are rich in vitamins such as vitamin K and vitamin C, as well as antioxidants like beta-carotene.',
        'They come in various shapes, sizes, and colors, including the common green cucumber and other specialty varieties like Armenian cucumbers or pickling cucumbers.',
        'Cucumbers are used in various culinary dishes, salads, sandwiches, and beverages, and they are also pickled to make pickles.'
      ],
      scientificClassification: [
        'Scientific Name: Cucumis sativus',
        'Genus: Cucumis',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 22,
      name: 'Kamansi [Seeded Breadfruit]',
      category: 'Vegetables',
      imageURL: _generateImageURL('kamansi'),
      nutritionalInformation: {
        'Calories': 103,
        'Carbohydrates': 27,
        'Protein': 1,
        'Fat': 0.2,
        'Fiber': 4.9,
        'Vitamin C': 23,
        'Potassium': 490,
      },
      recipes: [
        'Ilocos Kamansi Salad',
        'Kamansi Pakbet',
        'Kamansi and Coconut Milk Stew',
      ],
      description:
          'Kamansi, or seeded breadfruit, is a prized vegetable in Ilocos cuisine, celebrated for its unique texture and flavor. This versatile ingredient is an essential part of Ilocano dishes, symbolizing the rich culinary heritage of the region. The captivating province of Ilocos, Philippines, pays homage to Kamansi in recipes like the iconic Ilocos Kamansi Salad, where its distinct taste and creamy texture are showcased with a medley of ingredients. Kamansi Pakbet, a traditional stew, highlights the vegetable\'s compatibility with other local produce. Kamansi and Coconut Milk Stew, a comforting dish, brings out the vegetable\'s tender nature and enhances its delicious qualities. With its nutritional value and role in Ilocano gastronomy, Kamansi captures the essence of Ilocos\' culinary traditions, embodying the region\'s commitment to exceptional and nourishing produce.',
      vitamins: ['Vitamin C', 'Riboflavin (vitamin B2)'], // List of vitamins
      facts: [
        'Seeded breadfruit, also called kamansi or breadnut, is a tropical fruit tree native to New Guinea and other Pacific Islands.',
        'The fruit of the seeded breadfruit tree is round and green, with a spiky outer surface, and it contains edible seeds within its flesh.',
        'Kamansi seeds are starchy and are often roasted, boiled, or ground into flour for various culinary applications.',
        'The tree is valued for its versatile uses; apart from its edible seeds, the timber from the tree is used in construction and woodworking.',
        'Seeded breadfruit, while less known compared to its relative the breadfruit, plays an important role in local cuisines and economies in some regions.'
      ],
      scientificClassification: [
        'Scientific Name: Artocarpus altilis',
        'Genus: Artocarpus',
        'Family: Moraceae',
        'Order: Rosales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 23,
      name: 'Okra',
      category: 'Vegetables',
      imageURL: _generateImageURL('okra'),
      nutritionalInformation: {
        'Serving Size (g)': 80,
        'Calories': 18,
        'Total Fat (g)': 0.2,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 4.8,
        'Total Carbohydrates (g)': 3.6,
        'Dietary Fiber (g)': 2,
        'Sugars (g)': 1.9,
        'Protein (g)': 1.5,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 62,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 108
      },
      recipes: [
        'Ilocos Okra Salad',
        'Pinakbet with Okra',
        'Ginisang Okra',
      ],
      description:
          'Okra, a beloved vegetable in Ilocos cuisine, is a staple that adds a unique texture and flavor to traditional dishes. Known locally as "Okra," this versatile ingredient is celebrated in the captivating province of Ilocos, Philippines. The region pays tribute to Okra in recipes like the iconic Ilocos Okra Salad, where its crisp texture and mild taste are paired with vibrant local ingredients. Pinakbet with Okra, a flavorful stew, highlights the vegetable\'s compatibility with other local produce. Ginisang Okra, a simple sautéed dish, showcases the vegetable\'s delightful flavor and nutritional benefits. With its valuable nutritional profile and integral role in Ilocano gastronomy, Okra embodies the essence of Ilocos\' culinary traditions, reflecting the region\'s commitment to nourishing and delightful produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin K',
        'Vitamin A',
        'Vitamin B-6'
      ], // List of vitamins
      facts: [
        'Okra, also known as lady finger or gumbo, is a flowering plant valued for its edible green seed pods.',
        'It is a warm-season vegetable widely cultivated in tropical, subtropical, and warm temperate regions around the world.',
        'Okra pods are known for their characteristic mucilaginous or slimy texture, which can thicken soups and stews.',
        'The vegetable is rich in nutrients like vitamins C and K, as well as minerals such as potassium and magnesium.',
        'Okra is used in various culinary dishes, such as soups, stews, curries, and can be fried or pickled.'
      ],
      scientificClassification: [
        'Scientific Name: Abelmoschus esculentus',
        'Genus: Abelmoschus',
        'Family: Malvaceae',
        'Order: Malvales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 24,
      name: 'Patola',
      category: 'Vegetables',
      imageURL: _generateImageURL('patola'),
      nutritionalInformation: {
        'Serving Size (g)': 146,
        'Calories': 22,
        'Total Fat (g)': 0,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 2.9,
        'Total Carbohydrates (g)': 5.4,
        'Dietary Fiber (g)': 1.8,
        'Protein (g)': 0.9,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 35,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 248.2
      },
      recipes: [
        'Ilocos Native Patola Salad',
        'Ginisang Patola',
        'Patola and Bagnet Stew',
      ],
      description:
          'Silk squash, also known as Chinese okra, angled luffa, or patola, is a type of elongated vegetable belonging to the gourd family. In some regions, its referred to as silk squash due to its smooth and slightly fuzzy surface texture resembling silk. This vegetable is popular in various cuisines, including Asian and Mediterranean, and its known for its mild flavor and tender texture. In Filipino cuisine, silk squash is often used in dishes like stews, soups, stir-fries, and curries, contributing a pleasant and delicate taste to the meals. Its valued for its culinary versatility and nutritional benefits, as it's a good source of vitamins and minerals.',
      vitamins: [
        'Vitamin C',
        'Vitamin B6',
        'Vitamin A',
        'Vitamin B2',
        'Vitamin B3',
        'Folate (Vitamin B9)'
      ], // List of vitamins
      facts: [
        'Patola, also known as sponge gourd or Luffa, is a tropical vine plant cultivated for its edible fruits.',
        'It belongs to the Cucurbitaceae family and is grown in various warm regions globally.',
        'The young fruits of patola are consumed as a vegetable, often used in soups, stews, and stir-fries.',
        'In addition to its culinary uses, matured patola fruits are used as natural sponges due to their fibrous structure.',
        'Patola is rich in vitamins and minerals, such as vitamin C and potassium, offering potential health benefits.'
      ],
      scientificClassification: [
        'Scientific Name: Luffa acutangula',
        'Genus: Luffa',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 25,
      name: 'Squash',
      category: 'Vegetables',
      imageURL: _generateImageURL('squash'),
      nutritionalInformation: {
        'Serving Size (g)': 180,
        'Calories': 41,
        'Total Fat (g)': 0.7,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.2,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.8,
        'Total Carbohydrates (g)': 6.8,
        'Dietary Fiber (g)': 2,
        'Sugars (g)': 4.5,
        'Protein (g)': 1.9,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 40,
        'Iron (mg)': 0.7,
        'Potassium (mg)': 318.6
      },
      recipes: [
        'Ilocos Squash Soup',
        'Ginisang Squash with Shrimp',
        'Squash and Bagnet Kare-Kare',
      ],
      description:
          'Squash, a beloved vegetable in Ilocos cuisine, lends its rich and hearty flavor to a variety of traditional dishes. Known locally as "Kalabasa," this versatile ingredient is a cornerstone of the captivating province of Ilocos, Philippines. The region pays tribute to Squash in recipes like the iconic Ilocos Squash Soup, where its velvety texture and earthy taste are enhanced with local seasonings. Ginisang Squash with Shrimp, a sautéed dish, showcases the vegetable\'s ability to absorb flavors and create a satisfying meal. Squash and Bagnet Kare-Kare, a popular stew, combines the vegetable with crispy pork belly, creating a delectable medley of flavors and textures. With its nutritional value and significant role in Ilocano gastronomy, Squash embodies the essence of Ilocos\' culinary heritage, reflecting the region\'s commitment to nourishing and comforting produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin K',
        'Vitamin A',
        'Vitamin E',
        'Vitamin B6',
        'Folate (Vitamin B9)'
      ], // List of vitamins
      facts: [
        'Squash refers to various species of vine plants belonging to the Cucurbitaceae family, including both summer and winter squash varieties.',
        'It is cultivated and consumed worldwide, appreciated for its versatility and nutritional value.',
        'Summer squash varieties, like zucchini and yellow squash, are harvested while immature, with tender skin and seeds, and are often eaten cooked or raw.',
        'Winter squash, such as butternut squash and acorn squash, are harvested when mature, with hard skin and seeds, and are commonly used in soups, stews, and baked dishes.',
        'Squash is rich in vitamins A and C, as well as dietary fiber and antioxidants, offering various health benefits.'
      ],
      scientificClassification: [
        'Genus: Cucurbita',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 26,
      name: 'Tomato',
      category: 'Vegetables',
      imageURL: _generateImageURL('tomato'),
      nutritionalInformation: {
        'Serving Size (g)': 123,
        'Calories': 22,
        'Total Fat (g)': 0.3,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 6.2,
        'Total Carbohydrates (g)': 4.8,
        'Dietary Fiber (g)': 1.5,
        'Sugars (g)': 3.2,
        'Protein (g)': 1.1,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 12,
        'Iron (mg)': 0.3,
        'Potassium (mg)': 291.5
      },
      recipes: [
        'Ilocos Tomato Salad',
        'Pinakbet with Tomato',
        'Tomato and Bagnet Sinigang',
      ],
      description:
          'Tomato, a cherished vegetable in Ilocos cuisine, adds a burst of color and tangy flavor to traditional dishes. This versatile ingredient, known as "Kamatis," is an integral part of the captivating province of Ilocos, Philippines. The region celebrates Tomato in recipes like the iconic Ilocos Tomato Salad, where its juicy texture and vibrant taste are combined with local ingredients. Pinakbet with Tomato, a classic stew, showcases the vegetable\'s ability to enhance the overall taste of the dish. Tomato and Bagnet Sinigang, a sour soup, features the vegetable alongside crispy pork belly, creating a delightful balance of flavors. With its nutritional value and essential role in Ilocano gastronomy, Tomato embodies the essence of Ilocos\' culinary traditions, reflecting the region\'s commitment to zesty and delightful produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin K',
        'Vitamin A',
        'Vitamin E',
        'Vitamin B6',
        'Folate (Vitamin B9)'
      ], // List of vitamins
      facts: [
        'Tomato is a fruit that is commonly mistaken as a vegetable, and it belongs to the nightshade family, Solanaceae.',
        'Originally native to western South America, tomatoes have become a staple ingredient in cuisines worldwide.',
        'They come in various colors, shapes, and sizes, including red, yellow, orange, and even purple, and they can be round, oval, or irregularly shaped.',
        'Tomatoes are rich in vitamins C and K, as well as antioxidants like lycopene, known for potential health benefits.',
        'They are used in numerous culinary preparations, including salads, sauces, soups, sandwiches, and as a key ingredient in many dishes.'
      ],
      scientificClassification: [
        'Scientific Name: Solanum lycopersicum',
        'Genus: Solanum',
        'Family: Solanaceae',
        'Order: Solanales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 27,
      name: 'Upo (Bottle Gourd)',
      category: 'Vegetables',
      imageURL: _generateImageURL('upo'),
      nutritionalInformation: {
        'Serving Size (g)': 146,
        'Calories': 22,
        'Total Fat (g)': 0,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 2.9,
        'Total Carbohydrates (g)': 5.4,
        'Dietary Fiber (g)': 1.8,
        'Protein (g)': 0.9,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 35,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 248.2
      },
      recipes: [
        'Ilocos Upo Guisado',
        'Sinigang na Upo',
        'Upo and Malunggay Soup',
      ],
      description:
          'Upo, also known as Bottle Gourd, holds a special place in Ilocos cuisine, contributing a mild and delicate flavor to a variety of traditional dishes. This versatile vegetable is a beloved ingredient in the captivating province of Ilocos, Philippines. The region celebrates Upo in recipes like the iconic Ilocos Upo Guisado, where its tender texture and subtle taste are showcased alongside local seasonings. Sinigang na Upo, a sour soup, highlights the vegetable\'s ability to absorb flavors and create a refreshing broth. Upo and Malunggay Soup, a nourishing recipe, combines the vegetable with moringa leaves for an extra layer of nutrition. With its essential role in Ilocano gastronomy and unique attributes, Upo embodies the essence of Ilocos\' culinary traditions, reflecting the region\'s commitment to wholesome and delightful produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin B6',
        'Vitamin K',
        'Vitamin E',
        'Vitamin B2',
        'Vitamin B3',
        'Folate (Vitamin B9)'
      ], // List of vitamins
      facts: [
        'Bottle gourd, also known as calabash or white-flowered gourd, is a vine plant cultivated for its fruit.',
        'It belongs to the Cucurbitaceae family and is widely grown in tropical and subtropical regions around the world.',
        'The fruit of the bottle gourd is elongated, with a light green smooth skin and white flesh.',
        'It is low in calories and contains various nutrients like vitamins C and B, as well as minerals such as calcium and magnesium.',
        'Bottle gourd is used in culinary dishes such as curries, soups, stews, and can also be juiced or eaten raw.'
      ],
      scientificClassification: [
        'Scientific Name: Lagenaria siceraria',
        'Genus: Lagenaria',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 28,
      name: 'Marang',
      category: 'Fruits',
      imageURL: _generateImageURL('marang'),
      nutritionalInformation: {
        'Serving Size (g)': 220,
        'Calories': 227,
        'Total Fat (g)': 0.5,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.2,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 4.4,
        'Total Carbohydrates (g)': 60,
        'Dietary Fiber (g)': 11,
        'Sugars (g)': 24,
        'Protein (g)': 2.4,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 37,
        'Iron (mg)': 1.2,
        'Potassium (mg)': 1078
      },
      recipes: [
        'Marang Shake',
        'Marang Ice Cream',
        'Marang Salad',
      ],
      description:
          'Marang is a delectable and unique fruit cherished in the enchanting province of Ilocos, Philippines. Known for its spiky green exterior and soft, creamy, and custard-like flesh, Marang offers a delightful combination of sweetness and nutty flavors that captivate the taste buds of locals in Ilocos. This tropical delight is enjoyed fresh as a delicious snack, blended into luscious shakes, and transformed into indulgent ice creams. Additionally, Marang adds a delightful twist to fruit salads, infusing them with its enticing taste and aroma. As a treasured part of Ilocano culinary traditions, Marang exemplifies the provinces affinity for extraordinary and mouthwatering produce.',
      vitamins: [
        'Vitamin C',
        'Vitamin B6',
        'Vitamin E',
        'Vitamins B1 (Thiamin)',
        'Vitamin B2 (Riboflavin)',
        'Vitamin B3 (Riacin)',
        'Folate'
      ], // List of vitamins
      facts: [
        'Marang is a tropical fruit that belongs to the same family as jackfruit and breadfruit, native to the Philippines and other Southeast Asian countries.',
        'It has a spiky outer skin and contains multiple segments of creamy, sweet flesh that surrounds large seeds.',
        'The fruit is known for its unique flavor, which is a mix of sweet and slightly tangy, often compared to a blend of banana, pineapple, and mango.',
        'Marang is highly prized for its taste and is usually eaten fresh when ripe.',
        'It is a seasonal fruit and is enjoyed for its delicious flavor and aromatic qualities.'
      ],
      scientificClassification: [
        'Scientific Name: Artocarpus odoratissimus',
        'Genus: Artocarpus',
        'Family: Moraceae',
        'Order: Rosales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 29,
      name: 'Muskmelon',
      category: 'Fruits',
      imageURL: _generateImageURL('muskmelon'),
      nutritionalInformation: {
        'Serving Size (g)': 552,
        'Calories': 188,
        'Total Fat (g)': 1,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.5,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 88,
        'Total Carbohydrates (g)': 45,
        'Dietary Fiber (g)': 5,
        'Sugars (g)': 43,
        'Protein (g)': 4.6,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 50,
        'Iron (mg)': 1.2,
        'Potassium (mg)': 1473.8
      },
      recipes: [
        'Muskmelon Smoothie',
        'Muskmelon Salad',
        'Muskmelon Sorbet',
      ],
      description:
          'Muskmelon, also known as cantaloupe, is a delightful and refreshing fruit cherished in the picturesque province of Ilocos, Philippines. Admired for its netted beige skin and juicy, sweet flavor, Muskmelon captivates the taste buds of locals in Ilocos. This tropical fruit is enjoyed fresh as a delightful snack, blended into invigorating smoothies, and transformed into vibrant salads. Moreover, Muskmelon is a perfect base for creating scrumptious sorbets, providing a burst of refreshing goodness. As an esteemed part of Ilocano cuisine, Muskmelon represents the provinces love for wholesome and flavorsome produce, reflecting the regions rich agricultural heritage.',
      vitamins: ['Vitamin C', 'Vitamin B6', 'Vitamin A'], // List of vitamins
      facts: [
        'Muskmelon, also known as cantaloupe, is a type of melon belonging to the Cucurbitaceae family, cultivated for its sweet and aromatic flesh.',
        'It is believed to have originated in Persia and is now grown in various warm regions around the world.',
        'Muskmelons have a netted or smooth skin, and their flesh is typically orange, sweet, and juicy.',
        'Rich in vitamins A and C, as well as potassium, muskmelons are known for their hydrating and nutritional properties.',
        'They are commonly eaten fresh as a snack, added to fruit salads, or used in smoothies and desserts.'
      ],
      scientificClassification: [
        'Scientific Name: Cucumis melo',
        'Genus: Cucumis',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 30,
      name: 'Orange',
      category: 'Fruits',
      imageURL: _generateImageURL('orange'),
      nutritionalInformation: {
        'Serving Size (g)': 140,
        'Calories': 69,
        'Total Fat (g)': 0.2,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.4,
        'Total Carbohydrates (g)': 18,
        'Dietary Fiber (g)': 3.1,
        'Sugars (g)': 12,
        'Protein (g)': 1.3,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 60,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 232.4
      },
      recipes: [
        'Orange Juice',
        'Orange Salad',
        'Orange Smoothie',
      ],
      description:
          'Orange is a vibrant and zesty citrus fruit cherished in the captivating province of Ilocos, Philippines. Recognized for its bright orange hue and refreshing, tangy-sweet flavor, Orange delights the taste buds of locals in Ilocos. This tropical gem is enjoyed fresh as a delightful snack, squeezed into invigorating juices, and blended into refreshing smoothies. Additionally, Orange adds a burst of flavor to fruit salads, elevating their taste and aroma. As a beloved part of Ilocano cuisine, Orange symbolizes the provinces affinity for vibrant and delectable produce, epitomizing the essence of Ilocos agricultural abundance.',
      vitamins: ['Vitamin C', 'Vitamin A'], // List of vitamins
      facts: [
        'Oranges are citrus fruits known for their sweet and tangy flavor.',
        'They originated in Southeast Asia and are now grown in warm climates worldwide.',
        'Oranges have a tough, orange-colored peel that protects their juicy and segmented flesh.',
        'Rich in vitamin C, oranges are an excellent source of antioxidants and potassium.',
        'Commonly consumed fresh or juiced, oranges are versatile in various culinary applications.'
      ],

      scientificClassification: [
        'Scientific Name: Citrus × sinensis',
        'Genus: Citrus',
        'Family: Rutaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 31,
      name: 'Papaya',
      category: 'Fruits',
      imageURL: _generateImageURL('hawaiian-papaya'),
      nutritionalInformation: {
        'Serving Size (g)': 145,
        'Calories': 62,
        'Total Fat (g)': 0.4,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 12,
        'Total Carbohydrates (g)': 16,
        'Dietary Fiber (g)': 2.5,
        'Sugars (g)': 11,
        'Protein (g)': 0.7,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 29,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 263.9
      },
      recipes: [
        'Papaya Hawaiian Smoothie',
        'Papaya Hawaiian Salad',
        'Papaya Hawaiian Sorbet',
      ],
      description:
          '
Papayas, locally known as "malagkit" or "kadayo," thrive abundantly in the warm climate of Ilocos, becoming an integral part of the regions agricultural landscape. Their tropical taste and vibrant orange flesh have made them a staple in Ilocano households. Whether enjoyed ripe, sliced into refreshing salads, or incorporated into traditional recipes, papayas showcase their versatility in Ilocano cuisine. Symbolizing the regions fertility and the abundance of tropical fruits, papayas highlight Ilocos rich agricultural heritage and the culinary creativity of its people.',
      vitamins: ['Vitamin C', 'Vitamin A', 'Vitamin K'], // List of vitamins
      facts: [
        'Papaya, also known as papaw or pawpaw, is a tropical fruit that grows on the Carica papaya tree.',
        'Native to the tropics of the Americas, papayas are now cultivated in many warm regions globally.',
        'The fruit is pear-shaped or spherical with vibrant orange flesh and black seeds clustered in the center.',
        'Papayas are rich in vitamins A, C, and E, folate, potassium, and dietary fiber.',
        'The enzyme papain present in papayas aids in digestion, and the fruit is often used in folk remedies.'
      ],
      scientificClassification: [
        'Scientific Name: Carica papaya',
        'Genus: Carica',
        'Family: Caricaceae',
        'Order: Brassicales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 32,
      name: 'Pineapple',
      category: 'Fruits',
      imageURL: _generateImageURL('pineapple_native'),
      nutritionalInformation: {
        'Serving Size (g)': 83,
        'Calories': 41,
        'Total Fat (g)': 0.1,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 0.8,
        'Total Carbohydrates (g)': 11,
        'Dietary Fiber (g)': 1.2,
        'Sugars (g)': 8.1,
        'Protein (g)': 0.5,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 11,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 89.9
      },
      recipes: [
        'Pineapple Hawaiian Delight',
        'Pineapple Hawaiian Salad',
        'Pineapple Hawaiian Smoothie',
      ],
      description:
          'Pineapples, celebrated for their sweet-tangy taste and unique tropical charm, thrive in the warm climate of Ilocos. While not native to the region, these spiky fruits have found a welcoming home, symbolizing the provinces agricultural diversity. Grown in lush plantations, pineapples contribute to Ilocano cuisine, adding a burst of flavor to local dishes and juices. The pineapples golden flesh embodies the vibrant spirit of Ilocos, reflecting the regions adaptability in embracing and nurturing diverse produce, enhancing the local culinary experience with its juicy and refreshing presence.',
      vitamins: ['Vitamin C', 'Vitamin A', 'Vitamin K'], // List of vitamins
      facts: [
        'Pineapple is a tropical fruit belonging to the Bromeliaceae family, known for its sweet and tangy flavor and spiky outer skin.',
        'Native to South America, particularly in regions like Paraguay and Brazil, pineapples are now grown in various tropical areas worldwide.',
        'The fruit is composed of many individual berries fused together around a central core and surrounded by a tough, spiky rind.',
        'Pineapples are rich in vitamins C and B6, as well as dietary fiber and antioxidants, offering various health benefits.',
        'They are enjoyed fresh, juiced, added to fruit salads, used in cooking, and are a popular ingredient in desserts and tropical drinks.'
      ],
      scientificClassification: [
        'Scientific Name: Ananas comosus',
        'Genus: Ananas',
        'Family: Bromeliaceae',
        'Order: Poales',
        'Class: Liliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 33,
      name: 'Pomelo',
      category: 'Fruits',
      imageURL: _generateImageURL('pomelo'),
      nutritionalInformation: {
        'Serving Size (g)': 609,
        'Calories': 231,
        'Total Fat (g)': 0.2,
        'Trans Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 6.1,
        'Total Carbohydrates (g)': 59,
        'Dietary Fiber (g)': 6.1,
        'Protein (g)': 4.6,
        'Calcium (mg)': 24,
        'Iron (mg)': 0.7,
        'Potassium (mg)': 1315.4
      },
      recipes: [
        'Pomelo Salad',
        'Pomelo Salsa',
        'Pomelo Smoothie',
      ],
      description:
          'Pomelo, a tropical treasure, thrives in the alluring province of Ilocos, Philippines. Distinguished by its oversized form and tangy-sweet flavor, Pomelo captures the admiration of locals in Ilocos. This tropical delight is enjoyed fresh, showcasing its juicy and invigorating segments, used in zesty salads, and blended into revitalizing smoothies. Moreover, Pomelo adds a burst of vibrant zest to salsas, enhancing their taste and visual appeal. As a valued element of Ilocano culinary heritage, Pomelo reflects the provinces appreciation for fresh and tantalizing produce, embodying the essence of Ilocos lush agricultural legacy.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Pomelo is a citrus fruit belonging to the Rutaceae family, known for its large size, thick rind, and sweet-tart flavor.',
        'Native to Southeast Asia, pomelos are also cultivated in various tropical and subtropical regions around the world.',
        'The fruit resembles a large grapefruit but has thicker rind and pith, with segments that are usually easier to peel.',
        'Pomelos are rich in vitamin C, potassium, and antioxidants, offering various health benefits.',
        'They are commonly eaten fresh, added to fruit salads, or used in desserts and beverages, and are a popular Lunar New Year symbol of prosperity and good fortune in some cultures.'
      ],
      scientificClassification: [
        'Scientific Name: Citrus maxima',
        'Genus: Citrus',
        'Family: Rutaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 34,
      name: 'Rattan Fruit',
      category: 'Fruits',
      imageURL: _generateImageURL('rattan_fruit'),
      nutritionalInformation: {
        'Serving Size (g)': 190,
        'Calories': 125,
        'Total Fat (g)': 0.8,
        'Saturated Fat (g)': 0.2,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.3,
        'Monounsaturated Fat (g)': 0.2,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 1.9,
        'Total Carbohydrates (g)': 31,
        'Dietary Fiber (g)': 2.5,
        'Sugars (g)': 29,
        'Protein (g)': 1.6,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 9.5,
        'Iron (mg)': 0.6,
        'Potassium (mg)': 324.9
      },
      recipes: [
        'Rattan Fruit Snack',
        'Rattan Fruit Smoothie',
        'Rattan Fruit Jam',
      ],
      description:
          'Rattan Fruit, a rare tropical gem, finds its place of honor in the captivating province of Ilocos, Philippines. Recognized for its intriguing appearance and mildly sweet taste, Rattan Fruit captures the curiosity of locals in Ilocos. This exotic delight is relished fresh as a unique and flavorful snack, blended into exotic smoothies, and transformed into delectable jams. Furthermore, Rattan Fruit adds a touch of intrigue to culinary creations, reflecting the provinces love for diverse and exotic produce. As a cherished component of Ilocano culinary heritage, Rattan Fruit embodies the provinces appreciation for natures hidden treasures, showcasing the richness of Ilocos agricultural wonders.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        "Rattan fruit, or snake fruit, is native to Southeast Asia, primarily Indonesia.",
        "The fruit is named for its reddish-brown, scaly skin, resembling snake scales when peeled.",
        "With a sweet and tangy taste, rattan fruit is often likened to a combination of apples and berries.",
        "Rich in antioxidants and essential nutrients, snake fruit is a nutritious snack.",
        "Commonly consumed fresh, the segmented flesh of the rattan fruit is the main edible part."
      ],
      scientificClassification: [
        "Scientific Name: Salacca zalacca",
        "Genus: Salacca",
        "Family: Arecaceae",
        "Order: Arecales",
        "Class: Liliopsida",
        "Phylum: Angiosperms"
      ],
    ),
    Plant(
      plantId: 35,
      name: 'Santol',
      category: 'Fruits',
      imageURL: _generateImageURL('santol_native'),
      nutritionalInformation: {
        'Serving Size (g)': 76,
        'Calories': 55,
        'Total Fat (g)': 0.4,
        'Trans Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 5.3,
        'Total Carbohydrates (g)': 14,
        'Dietary Fiber (g)': 1.4,
        'Protein (g)': 0.3,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 9.1,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 36.5
      },
      recipes: [
        'Santol Native Delight',
        'Santol Native Salad',
        'Santol Native Smoothie',
      ],
      description:
          'Santol, an exotic delight, graces the vibrant province of Ilocos, Philippines. Admired for its distinctive appearance and pleasantly sweet-sour taste, Santol Native captures the fascination of locals in Ilocos. This tropical treasure is enjoyed fresh, revealing its juicy and tangy segments, used in creative salads, and blended into refreshing smoothies. Furthermore, Santol Native adds a touch of exotic flair to culinary creations, reflecting the provinces appreciation for unique and flavorful produce. As a beloved component of Ilocano culinary heritage, Santol Native showcases the provinces zest for embracing nature bountiful offerings, embodying the essence of Ilocos agricultural diversity.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Santol is a tropical fruit belonging to the Meliaceae family, native to Southeast Asia and commonly found in countries like the Philippines and Thailand.',
        'It has a round or oval shape with a thick, spongy rind that ranges in color from yellow to brown, and it contains juicy, segmented flesh.',
        'Santol is known for its sweet and tangy flavor, often described as a mix of peach and citrus notes.',
        'The fruit is typically eaten fresh, with the flesh surrounding the seeds being the main edible part.',
        'It is also used in jams, preserves, and culinary dishes, and the seeds can be roasted and eaten.'
      ],
      scientificClassification: [
        'Scientific Name: Sandoricum koetjape',
        'Genus: Sandoricum',
        'Family: Meliaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 36,
      name: 'Siniguelas',
      category: 'Fruits',
      imageURL: _generateImageURL('Siniguelas__Jamaica_Plum'),
      nutritionalInformation: {
        'Serving Size (g)': 76,
        'Calories': 55,
        'Total Fat (g)': 0.4,
        'Trans Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 5.3,
        'Total Carbohydrates (g)': 14,
        'Dietary Fiber (g)': 1.4,
        'Protein (g)': 0.3,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 9.1,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 36.5
      },
      recipes: [
        'Siniguelas Delight',
        'Siniguelas Jam',
        'Siniguelas Sorbet',
      ],
      description:
          'Siniguelas, known as Jamaica Plum, graces the province of Ilocos, Philippines, with its distinctive charm and mildly tangy flavor. Locals in Ilocos hold a fondness for this tropical treat due to its refreshing taste and nostalgic appeal. Enjoyed fresh as a delightful snack, transformed into delectable jams, or transformed into refreshing sorbets, Siniguelas showcases its versatility in culinary creations. This fruit reflects the essence of Ilocos agricultural heritage, offering a taste of the provinces natural bounty and the warm memories it evokes.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Siniguelas, also called Spanish plum, is a small, round fruit that grows in clusters on trees and belongs to the cashew family, Anacardiaceae.',
        'It has a thin purple to reddish skin and a juicy, tart-sweet flesh surrounding a large seed.',
        'The taste is often described as tangy and slightly acidic, with flavors reminiscent of a mix between plum and mango.',
        'Siniguelas are typically eaten fresh, and the flesh is sucked or bitten off the seed.',
        'They are also used in jams, preserves, and sometimes in culinary recipes.'
      ],
      scientificClassification: [
        'Scientific Name: Spondias purpurea',
        'Genus: Spondias',
        'Family: Anacardiaceae',
        'Order: Sapindales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 37,
      name: 'Starapple',
      category: 'Fruits',
      imageURL: _generateImageURL('Starapple'),
      nutritionalInformation: {
        'Serving Size (g)': 76,
        'Calories': 55,
        'Total Fat (g)': 0.4,
        'Trans Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 5.3,
        'Total Carbohydrates (g)': 14,
        'Dietary Fiber (g)': 1.4,
        'Protein (g)': 0.3,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 9.1,
        'Iron (mg)': 0.2,
        'Potassium (mg)': 36.5
      },
      recipes: [
        'Starapple Smoothie',
        'Starapple Salad',
        'Starapple Parfait',
      ],
      description:
          'Starapple, a tropical delight, graces the picturesque province of Ilocos, Philippines, with its sweet and refreshing allure. Admired for its unique star-shaped cross-section and luscious taste, Starapple captures the hearts of locals in Ilocos. This tropical gem is savored fresh, showcasing its succulent and juicy segments, incorporated into revitalizing smoothies, and added to captivating salads. Moreover, Starapple lends its tropical charm to parfaits, enhancing their flavor and visual appeal. As a cherished part of Ilocano culinary traditions, Starapple symbolizes the provinces affinity for vibrant and delectable produce, embodying the essence of Ilocos abundant agricultural richness.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Star apple, also known as cainito or aguay, is a tropical fruit native to the Caribbean, Central America, and parts of South America.',
        'It belongs to the Sapotaceae family and is characterized by its round to oval shape with smooth, purple or green skin.',
        'When cut crosswise, the fruit creamy, sweet pulp resembles a star shape, hence the name "star apple."',
        'Star apples have a sweet, juicy flesh that ranges in color from white to purple or pink, and it contains small seeds.',
        'The fruit is typically eaten fresh, scooping out the pulp with a spoon, and its also used in beverages and desserts.'
      ],
      scientificClassification: [
        'Scientific Name: Chrysophyllum cainito',
        'Genus: Chrysophyllum',
        'Family: Sapotaceae',
        'Order: Ericales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 38,
      name: 'Strawberry',
      category: 'Fruits',
      imageURL: _generateImageURL('Strawberry'),
      nutritionalInformation: {
        'Serving Size (g)': 90,
        'Calories': 29,
        'Total Fat (g)': 0.3,
        'Saturated Fat (g)': 0,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 0.9,
        'Total Carbohydrates (g)': 6.9,
        'Dietary Fiber (g)': 1.8,
        'Sugars (g)': 4.4,
        'Protein (g)': 0.6,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 14,
        'Iron (mg)': 0.4,
        'Potassium (mg)': 137.7
      },
      recipes: [
        'Strawberry Parfait',
        'Strawberry Smoothie',
        'Strawberry Salad',
      ],
      description:
          'Strawberries, though not native to Ilocos, have found a home in the province and captivate locals with their sweet and vibrant character. Grown in the highlands, strawberries thrive in the cool climate, showcasing their ruby-red hue and refreshing taste. These delightful berries are cherished for their versatility, transforming into delectable parfaits, lending their vibrant essence to revitalizing smoothies, and enhancing the flavors of creative salads. While not native, strawberries have become a beloved part of Ilocano culinary culture, representing the provinces openness to embracing new flavors and celebrating the beauty of natures diverse bounty.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Strawberries are a type of fruit belonging to the Fragaria genus in the Rosaceae family and are known for their vibrant red color and sweet flavor.',
        'They are native to many temperate regions around the world and are cultivated for their edible fruit.',
        'Strawberries are unique because their seeds are on the outside, embedded in the flesh.',
        'They are rich in vitamin C, manganese, folate, and antioxidants, offering various health benefits.',
        'Strawberries are commonly eaten fresh, used in desserts, jams, sauces, and are a popular addition to salads.'
      ],
      scientificClassification: [
        'Scientific Name: Fragaria × ananassa',
        'Genus: Fragaria',
        'Family: Rosaceae',
        'Order: Rosales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 39,
      name: 'Tamarind',
      category: 'Fruits',
      imageURL: _generateImageURL('Tamarind'),
      nutritionalInformation: {
        'Serving Size (g)': 120,
        'Calories': 287,
        'Total Fat (g)': 0.7,
        'Saturated Fat (g)': 0.3,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.2,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 34,
        'Total Carbohydrates (g)': 75,
        'Dietary Fiber (g)': 6.1,
        'Sugars (g)': 47,
        'Protein (g)': 3.4,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 89,
        'Iron (mg)': 3.4,
        'Potassium (mg)': 753.6
      },
      recipes: [
        'Tamarind Chutney',
        'Tamarind Juice',
        'Tamarind Candy',
      ],
      description:
          'Tamarind, known for its unique sweet and tangy flavor, graces the province of Ilocos, Philippines. Adored for its distinctive taste and culinary versatility, Tamarind finds its place in various dishes and treats. Used to create delightful chutneys, refreshing juices, and even savory dishes, Tamarind is an essential ingredient in Ilocano cuisine. Its rich, sour-sweet taste adds depth and complexity to culinary creations, reflecting the provinces penchant for balancing flavors in their dishes. As a cherished component of Ilocano culinary heritage, Tamarind showcases the provinces mastery of incorporating bold and delightful flavors into their diverse array of dishes.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Tamarind is a tropical fruit-bearing tree belonging to the Fabaceae family, known for its pod-like fruit and tangy flavor.',
        'Native to Africa, tamarind is now cultivated in many tropical regions globally, including Asia and Latin America.',
        'The fruit pods contain a sticky, sour pulp that develops as the pods mature; it is often used in cooking.',
        'Tamarind is a common ingredient in various cuisines, providing a sweet-sour flavor to dishes, sauces, drinks, and desserts.',
        'Besides its culinary uses, tamarind is valued for its potential health benefits, containing vitamins, minerals, and antioxidants.'
      ],
      scientificClassification: [
        'Scientific Name: Tamarindus indica',
        'Genus: Tamarindus',
        'Family: Fabaceae',
        'Order: Fabales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    ),
    Plant(
      plantId: 40,
      name: 'Watermelon',
      category: 'Fruits',
      imageURL: _generateImageURL('Watermelon'),
      nutritionalInformation: {
        'Serving Size (g)': 286,
        'Calories': 86,
        'Total Fat (g)': 0.4,
        'Saturated Fat (g)': 0.1,
        'Trans Fat (g)': 0,
        'Polyunsaturated Fat (g)': 0.1,
        'Monounsaturated Fat (g)': 0.1,
        'Cholesterol (mg)': 0,
        'Sodium (mg)': 2.9,
        'Total Carbohydrates (g)': 22,
        'Dietary Fiber (g)': 1.1,
        'Sugars (g)': 18,
        'Protein (g)': 1.7,
        'Vitamin D (mcg)': 0,
        'Calcium (mg)': 20,
        'Iron (mg)': 0.7,
        'Potassium (mg)': 320.3
      },
      recipes: [
        'Watermelon Salad',
        'Watermelon Cooler',
        'Watermelon Sorbet',
      ],
      description:
          'Watermelon, a symbol of refreshment and summer delight, is enjoyed by locals in Ilocos, Philippines. With its vibrant color and juicy sweetness, watermelon captures the essence of hot Ilocano days. Often served as a refreshing salad, blended into cooling beverages, or transformed into mouthwatering sorbets, watermelon becomes an essential part of Ilocano summer cuisine. The provinces embrace of this hydrating fruit reflects its connection to nature and its ability to provide relief from the tropical heat. Watermelon embodies the carefree spirit of Ilocano summers, offering a burst of coolness and sweetness to those seeking solace in its delicious and watery flesh.',
      vitamins: ['Vitamin C', 'Vitamin B6'], // List of vitamins
      facts: [
        'Watermelon is a vine-like flowering plant that produces a large fruit known for its juicy, sweet, and refreshing taste.',
        'It belongs to the Cucurbitaceae family, which also includes cucumbers, pumpkins, and squash.',
        'Originally from Southern Africa, watermelons are now cultivated in many warm regions around the world.',
        'The fruits flesh is typically red or yellow, with black seeds or seedless varieties available.',
        'Watermelon is high in water content, low in calories, and contains essential nutrients like vitamins A and C, as well as antioxidants like lycopene.'
      ],
      scientificClassification: [
        'Scientific Name: Citrullus lanatus',
        'Genus: Citrullus',
        'Family: Cucurbitaceae',
        'Order: Cucurbitales',
        'Class: Magnoliopsida',
        'Phylum: Angiosperms',
      ],
    )
  ];

   static String _generateImageURL(String plantName) {
    // Construct the image URL based on the plant name
    return 'https://firebasestorage.googleapis.com/v0/b/bahaykubounty.appspot.com/o/plants-images%2F$plantName.png?alt=media';
  }

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }



  
}

