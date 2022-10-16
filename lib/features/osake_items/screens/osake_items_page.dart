import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/osake_items/models/osake.dart';
import 'package:dating_app/features/osake_items/screens/osake_detail_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OsakeItemsPage extends StatelessWidget {
  const OsakeItemsPage({super.key});

  static const routeName = 'osake-items';

  @override
  Widget build(BuildContext context) {
    final osakeList = [
      const Osake(
        name: 'ほろよい（１本セット）',
        price: 300,
        image:
            'https://m.media-amazon.com/images/I/81LTz2HBEUL._AC_SL1500_.jpg',
      ),
      const Osake(
        name: 'ほろよい（３本セット）',
        price: 600,
        image:
            'https://m.media-amazon.com/images/I/81LTz2HBEUL._AC_SL1500_.jpg',
      ),
      const Osake(
        name: 'ほろよい（５本セット）',
        price: 980,
        image:
            'https://m.media-amazon.com/images/I/81LTz2HBEUL._AC_SL1500_.jpg',
      ),
      const Osake(
        name: 'ほろよい（１０本セット）',
        price: 1960,
        image:
            'https://m.media-amazon.com/images/I/81LTz2HBEUL._AC_SL1500_.jpg',
      ),
    ];
    final l10n = L10n.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.home),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            crossAxisCount: 3,
            childAspectRatio: 180 / 240,
          ),
          itemCount: osakeList.length,
          itemBuilder: (BuildContext context, int index) {
            final osake = osakeList[index];
            return InkWell(
              onTap: () {
                context.goNamed(OsakeDetailPage.routeName);
              },
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CachedNetworkImage(
                        imageUrl: osake.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      osake.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: textTheme.bodySmall,
                    ),
                    Text(
                      l10n.yen(osake.price),
                      style: textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
