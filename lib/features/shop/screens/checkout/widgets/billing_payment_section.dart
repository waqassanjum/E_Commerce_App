import 'package:flutter/material.dart';

class TBillingPaymentScreen extends StatelessWidget {
  const TBillingPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium),
        Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
