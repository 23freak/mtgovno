import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_mobx/src/models/mtg_card.dart';

class MtgCardDetails extends StatelessWidget {
  final MtgCard card;
  const MtgCardDetails({required this.card, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (card.imageUrl != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: card.imageUrl!,
                  progressIndicatorBuilder: (context, url, progress) =>
                      const SizedBox(
                    height: 400,
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                ),
              ),
            if (card.text != null)
              Text(
                card.text!,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }
}
