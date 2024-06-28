import 'package:advance_flutter_exam_1/screen/controller/apiProvider.dart';
import 'package:advance_flutter_exam_1/screen/view/DetailPage/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtMove = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu, size: 30),
                ),
                SizedBox(width: 30),
                SizedBox(
                  width: 340,
                  child: TextField(
                    controller: txtMove,
                    decoration: InputDecoration(),
                  ),
                )
              ],
            ),
            SizedBox(height: 90),
            InkWell(
              child: Container(
                height: 400,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(Provider.of<ApiProvider>(context).movies.Poster.toString()),
                        fit: BoxFit.fill)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
            ),
            Text(Provider.of<ApiProvider>(context).movies.Title.toString(),
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  height: 2),
            ),
          ],
        ),
      ),
    );
  }
}
