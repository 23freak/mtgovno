import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_mobx/src/models/mtg_card.dart';
import 'package:test_mobx/src/router/router.dart';

class MtgCardListTile extends StatelessWidget {
  final MtgCard card;
  const MtgCardListTile(this.card, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(card.name),
      subtitle: Text(card.label),
      onTap: () {
        AutoRouter.of(context).push(MtgCardDetailRoute(id: card.id));
      },
    );
  }
}
