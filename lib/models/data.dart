import 'package:babysitter_app/models/babysitter.dart';

Future<List<BabySitter>> getBabySitters() async {
  await Future.delayed(const Duration(milliseconds: 500));
  return _babysitters;
}

final List<BabySitter> _babysitters = [
  BabySitter(
    firstName: 'Nikita',
    gender: 'Female',
    lastName: 'Johns',
    location: 'Kenya, Kiango',
    id: 'B1',
    description:
        'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. Consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
    rating: '4.8',
    imageUrl: [
      'assets/images/image13.png',
      'assets/images/image10.png',
    ],
    reviews: [
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
    ],
    pricing: [
      {
        'full Day Care': 11.50,
        'half a day': 8.99,
        'baby bath': 2.10,
      }
    ],
  ),
  BabySitter(
    firstName: 'Ryan',
    gender: 'Female',
    lastName: 'Watson',
    location: 'Kenya, Kiango',
    id: 'B2',
    description:
        'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
    rating: '4.8',
    imageUrl: [
      'assets/images/image14.png',
      'assets/images/image10.png',
    ],
    reviews: [
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
    ],
    pricing: [
      {
        'full Day Care': 11.50,
        'half a day': 8.99,
        'baby bath': 2.10,
      }
    ],
  ),
  BabySitter(
    firstName: 'Starlet',
    gender: 'Female',
    lastName: 'Nikita',
    location: 'Kenya, Kiango',
    id: 'B3',
    description:
        'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
    rating: '4.8',
    imageUrl: [
      'assets/images/image12.png',
      'assets/images/image10.png',
    ],
    reviews: [
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
    ],
    pricing: [
      {
        'full Day Care': 11.50,
        'half a day': 8.99,
        'baby bath': 2.10,
      }
    ],
  ),
  BabySitter(
    firstName: 'Beatrice',
    gender: 'Female',
    lastName: 'Maisiba',
    location: 'Kenya, Kiango',
    id: 'B4',
    description:
        ' He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
    rating: '4.8',
    imageUrl: [
      'assets/images/image13.png',
      'assets/images/image10.png',
    ],
    reviews: [
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and th ey were a joy to work with. {BabySitter Name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
      {
        'User': 'Ryan Philips',
        'image': 'assets/images/image17.png',
        'Review':
            'He has watched my two children (ages 4 and 7) twice a week for the entire summer, and they were a joy to work with. {Babysitter name} consistently arrived at our home on time, ready to engage with our kids, with a smile on.',
      },
    ],
    pricing: [
      {
        'full Day Care': 11.50,
        'half a day': 8.99,
        'baby bath': 2.10,
      }
    ],
  ),
];
