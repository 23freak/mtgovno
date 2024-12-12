import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_mobx/src/components/mtg_card_list_tile.dart';
import 'package:test_mobx/src/store/mtg_card_list_store.dart';
import 'package:test_mobx/src/models/mtg_card.dart';

class MtgCardList extends StatelessWidget {
  const MtgCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I<MtgCardListStore>();

    return Scaffold(
      body: Observer(
        builder: (_) {
          if (store.isLoading && store.pagingController.itemList == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (store.error != null) {
            return Center(child: Text("Error: ${store.error}"));
          }

          return PagedListView<int, MtgCard>(
            pagingController: store.pagingController,
            builderDelegate: PagedChildBuilderDelegate<MtgCard>(
              itemBuilder: (context, card, index) {
                return MtgCardListTile(card);
              },
              firstPageErrorIndicatorBuilder: (_) =>
                  const Center(child: Text('Error loading data. Try again.')),
              noItemsFoundIndicatorBuilder: (_) =>
                  const Center(child: Text('No cards found.')),
            ),
          );
        },
      ),
    );
  }
}
