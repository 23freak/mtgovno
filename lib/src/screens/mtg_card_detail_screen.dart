import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mobx/src/components/mtg_card_details.dart';
import 'package:test_mobx/src/store/mtg_card_detail_store.dart';
import 'package:test_mobx/src/components/background/mtg_card_header.dart';

@RoutePage()
class MtgCardDetailScreen extends HookWidget {
  final String id;
  const MtgCardDetailScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final store = useMemoized(() => MtgCardDetailStore());
    useEffect(() {
      store.fetchCard(id);
    }, []);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: HeaderBackground(
          child: AppBar(
            title: Observer(
              builder: (_) {
                final card = store.card;
                return Center(
                  child: Text(
                    card?.name ?? '',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
        ),
      ),
      body: Stack(
        children: [
          Observer(
            builder: (_) {
              if (store.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (store.error != null) {
                return Center(
                  child: Text(
                    "Error: ${store.error}",
                  ),
                );
              }

              final card = store.card;
              if (card == null) {
                return const Center(
                  child: Text(
                    "Card not found",
                  ),
                );
              }

              return MtgCardDetails(card: card);
            },
          ),
        ],
      ),
    );
  }
}
