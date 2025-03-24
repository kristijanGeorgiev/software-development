import 'package:flutter/material.dart';

import 'models/product.dart';
import 'models/types.dart';
const DUMMY_TYPES = const [
  Types(
    id: 't1',
    title: 'Cheeses',
    color: Colors.purple,
  ),
  Types(
    id: 't2',
    title: 'Frozen Juices',
    color: Colors.red,
  ),
  Types(
    id: 't3',
    title: 'Canned Soups',
    color: Colors.orange,
  ),
  Types(
    id: 't4',
    title: 'Bottled Juices',
    color: Colors.amber,
  ),
];
const DUMMY_PRODUCT = const [
  Product(
      id: '1',
      types: [
        't1',
      ],
      name: 'Cow Cheese',
      image: 'https://media.istockphoto.com/id/1449589581/photo/bulgarian-cow-cheese-in-traditional-bulgarian-dish.jpg?s=612x612&w=0&k=20&c=nV6CP4LlIDi4LakehRFn5JKkhdoafhrMteZJ4sNF9vY=',
      price: 120,
      description: 'Cow cheese is a dairy product made from the milk of cows. It is a popular and versatile cheese that is enjoyed all over the world. Cow cheese can vary in flavor, texture, and appearance depending on factors such as the breed of cow, the diet of the cow, and the method of production.'
  ),
  Product(
    id: '2',
    types: [
      't2'
    ],
    name: 'Apple Cherry Juice',
    image: 'https://www.poison.org/-/media/images/shared/articles/cherry-juice-and-cherries.jpg',
    price: 145,
    description: 'Cherry juice is a mass-produced food product that is consumed as a beverage and used as an ingredient in various foods, processed foods and beverages. It is sometimes used as an ingredient in cherry ice cream and in cherry pie filling. It is also used as an ingredient in cherry brandy and cherry bounce. Cherry jelly has also been produced using the juice. Cherry juice concentrate is used by food manufacturers in the production of fruit juice blends. Cherry juice from the Montmorency cherry is used to produce cherry essence, which is used as a flavor concentrate by food manufacturers.',
  ),
  Product(
      id: '3',
      types: [
        't3',
      ],
      name: 'Vegetable Soup',
      image: 'https://www.marcellinaincucina.com/wp-content/uploads/2019/02/Chicken-and-Vegetable-Soup-blog-3.jpg',
      price: 210,
      description: 'Vegetable soup is prepared using vegetables, leafy greens, mushrooms, and roots as the main ingredients. Some fruits, such as tomato and squash, are considered vegetables in such a context. Vegetable soup can be prepared as a stock- or cream-based soup. Basic ingredients in addition to vegetables can include beef, fish, beans and legumes, grains, tofu, noodles and pasta, vegetable broth or stock, milk, cream, water, olive or vegetable oil, seasonings, salt and pepper, among myriad others. Some vegetable soups are pureed and run through a sieve, straining them to create a smooth texture.[8] It is typically served hot, although some, such as gazpacho, are typically served cold. Vegetable soup is sometimes served as a starter or appetizer dish.'
  ),
  Product(
    id: '4',
    types: [
      't4',
    ],
    name: 'Orange Juice',
    image: 'https://firesidefoodshop.com/cdn/shop/products/orangejuice-1_667x.jpg?v=1586206372',
    price: 190,
    description: 'Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.',
  ),
];