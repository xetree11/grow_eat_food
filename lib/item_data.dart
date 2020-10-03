import './models/item.dart';

const MEAL_ITEMS_DATA = const [
  Item(
    id: '1',
    title: 'Apple',
    categories: ['Fruits'],
    price: 3.5,
    priceType: 'per kg',
    // harvestDate: DateTime.parse('2012-02-27 13:27:00'),
    condition: Condition.Fresh,
    status: Status.Available,
    isOrganic: true,
    location: null,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
  ),
];