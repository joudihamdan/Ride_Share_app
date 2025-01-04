import 'package:flutter/material.dart';
import 'package:ride_share_app/features/Offer/presentation/widgets/offer_item.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offer"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return const OfferItem();
          }),
    );
  }
}
