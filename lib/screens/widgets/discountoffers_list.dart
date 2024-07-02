import 'package:flutter/material.dart';
import 'package:shopping_app/screens/widgets/discountoffers_widget.dart';

class DiscountOffersGrid extends StatelessWidget {
  final List<Map<String, dynamic>> offers = [
    {
      'title': 'Offer 1',
      'subtitle': 'Subtitle 1',
      'imagelocation': 'assets/image1.png',
      'price': '\$100',
      'discount': '\$85',
      'active': true,
    },
    {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    },
     {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    }, {
      'title': 'Offer 2',
      'subtitle': 'Subtitle 2',
      'imagelocation': 'assets/image2.png',
      'price': '\$150',
      'discount': '\$130',
      'active': false,
    },
    // Add more offers here
  ];
   

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
             itemCount: offers.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final offer = offers[index];
              return DiscountOffersWidget(
                title: offer['title'],
                subtitle: offer['subtitle'],
                imagelocation: offer['imagelocation'],
                price: offer['price'],
                discount: offer['discount'],
                active: offer['active'], addItemToCheckout: (String ) {  },
              );
            },
          ),
        ),
      );
  }
}

