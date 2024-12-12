// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtg_card_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MtgCardDetailStore on _MtgCardDetailStore, Store {
  late final _$cardAtom =
      Atom(name: '_MtgCardDetailStore.card', context: context);

  @override
  MtgCard? get card {
    _$cardAtom.reportRead();
    return super.card;
  }

  @override
  set card(MtgCard? value) {
    _$cardAtom.reportWrite(value, super.card, () {
      super.card = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_MtgCardDetailStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_MtgCardDetailStore.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$fetchCardAsyncAction =
      AsyncAction('_MtgCardDetailStore.fetchCard', context: context);

  @override
  Future<void> fetchCard(String id) {
    return _$fetchCardAsyncAction.run(() => super.fetchCard(id));
  }

  @override
  String toString() {
    return '''
card: ${card},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
