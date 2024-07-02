import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Map<String, dynamic>> checkoutItems;
  final Function(Map<String, dynamic>) removeItemFromCheckout;
  final Function(Map<String, String>) addItemToCheckout;

  CheckoutScreen({
    required this.checkoutItems,
    required this.removeItemFromCheckout,
    required this.addItemToCheckout,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: checkoutItems.length,
            itemBuilder: (context, index) {
              final item = checkoutItems[index];
              return ListTile(
                leading: Image.asset(item['imagelocation']),
                title: Text(item['title']),
                subtitle: Container(
                  child: Text('${item['subtitle']} - Quantity: ${item['quantity']}', style: TextStyle(
                                 
                      overflow: TextOverflow.ellipsis,),),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () => addItemToCheckout({
                        'title': item['title'],
                        'subtitle': item['subtitle'],
                        'imagelocation': item['imagelocation'],
                        'price': item['price'],
                        'discount': item['discount'],
                      }),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => removeItemFromCheckout(item),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            child: Text('Complete Order'),
            onPressed: () {
              Navigator.pushNamed(context, '/order-success');
            },
          ),
        ),
      ],
    );
  }
}