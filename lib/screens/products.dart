import 'package:flutter/material.dart';

import 'widgets/discountoffers_widget.dart';

class DiscountOffersGrid extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function(Map<String, String>) addItemToCheckout;

  DiscountOffersGrid({required this.products, required this.addItemToCheckout});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () => addItemToCheckout(product),
          child: DiscountOffersWidget(
            title: product['title']!,
            subtitle: product['subtitle']!,
            imagelocation: product['imagelocation']!,
            price: product['price']!,
            discount: product['discount']!,
            active: true, addItemToCheckout: (String ) {  },
          ),
        );
      },
    );
  }
}