// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:test_mobx/src/models/mtg_card.dart';
import 'package:test_mobx/src/services/mtg_service.dart';

part 'mtg_card_detail_store.g.dart';

class MtgCardDetailStore = _MtgCardDetailStore with _$MtgCardDetailStore;

abstract class _MtgCardDetailStore with Store {
  @observable
  MtgCard? card;

  @observable
  bool isLoading = false;

  @observable
  String? error;

  @action
  Future<void> fetchCard(String id) async {
    isLoading = true;
    error = null;

    try {
      card = await MtgService().retrieveCard(id);
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
    }
  }
}
