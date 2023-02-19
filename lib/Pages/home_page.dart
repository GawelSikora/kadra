import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('Kadra'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {




                },
                child: Expanded(
                  child: Image.network(
                      'https://cdn.galleries.smcloud.net/t/galleries/gf-XdwU-1cUJ-y3Qu_fernando-santos-zdecydowal-znamy-sztab-nowego-selekcjonera-664x442.jpg'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Expanded(
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Poland_national_football_team_Euro_2012.jpg/350px-Poland_national_football_team_Euro_2012.jpg'),
                ),
              ),
            ],
          ),
        ));
  }
}
