import 'package:flutter/material.dart';
import 'package:kadra/Pages/data_source.dart';
import 'package:kadra/Pages/kadra.dart';
import 'package:kadra/Pages/sztab.dart';
import 'package:kadra/repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Kadra'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Repository(DataSource()).sztabModel();
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const Sztab()),
                );
              },
              child: Flexible(
                child: Image.network(
                  'https://cdn.galleries.smcloud.net/t/galleries/gf-XdwU-1cUJ-y3Qu_fernando-santos-zdecydowal-znamy-sztab-nowego-selekcjonera-664x442.jpg',
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const Kadra()),
                );
              },
              child: Flexible(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Poland_national_football_team_Euro_2012.jpg/350px-Poland_national_football_team_Euro_2012.jpg',
                ),
              ),
            ),
          ],
        ));
  }
}
