import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/apiProvider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 28,
                  ),
                  Icon(
                    Icons.settings,
                    size: 28,
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Container(
                  height: 350,
                  width: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(Provider.of<ApiProvider>(context).movies.Poster.toString()),
                          fit: BoxFit.fill)),
                ),
                SizedBox(height: 20),
                Text(
                  Provider.of<ApiProvider>(context).movies.Title.toString()+','+Provider.of<ApiProvider>(context).movies.Year.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: Text(
                    'Ranbir Kapoor, Anil Kapoor, Bobby Deol',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                      "The hardened son of a powerful industrialist returns home after years abroad and vows to take bloody revenge on those threatening his father's life."),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Provider.of<ApiProvider>(context).movies.Released.toString()),
                    Text(Provider.of<ApiProvider>(context).movies.Year.toString()),
                    Text('Not Rated'),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
