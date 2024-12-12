import 'package:mobx/mobx.dart';
import 'package:test_mobx/src/models/mtg_card.dart';
import 'package:test_mobx/src/services/mtg_service.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'mtg_card_list_store.g.dart';

// ignore: library_private_types_in_public_api
class MtgCardListStore = _MtgCardListStore with _$MtgCardListStore;

abstract class _MtgCardListStore with Store {
  @observable
  bool isLoading = false;

  @observable
  String? error;

  final PagingController<int, MtgCard> pagingController =
      PagingController(firstPageKey: 1);

  _MtgCardListStore() {
    pagingController.addPageRequestListener(fetchPage);
  }

  @action
  Future<void> fetchPage(int pageKey) async {
    if (isLoading) return;

    isLoading = true;
    error = null;

    try {
      final newCards = await MtgService().listCards(pageKey);

      final filteredCards =
          newCards.where((card) => card.imageUrl != null).toList(); //TODO

      final isLastPage = filteredCards.length < 20;

      if (isLastPage) {
        pagingController.appendLastPage(filteredCards);
      } else {
        pagingController.appendPage(filteredCards, pageKey + 1);
      }
    } catch (e) {
      error = e.toString();
      pagingController.error = e;
    } finally {
      isLoading = false;
    }
  }
}
