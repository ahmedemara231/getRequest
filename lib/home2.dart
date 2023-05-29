import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:untitled7_alaa/News_Api/model.dart';
import 'package:untitled7_alaa/News_Api/repo.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {

  bool isLoading = true;
  late Model2 newsModel;
  Repo2 repo2 = Repo2();

  void getNews()async
  {
    await repo2.getNewsData().then((value)
    {
      if(value.status == 'ok')
        {
          newsModel = value;
          print(newsModel.totalResults);
          setState(() {
            isLoading = false;
          });
          print('ok');
        }
      else
      {
        print('not ok');
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading? const Center(child: Text('Loading...'),) :
      GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            newsModel.articles.length,
                (index) => Card(
                  child: Column(
                    children: [
                      Image.network('${newsModel.articles[index]['urlToImage']}'),
                      Text(newsModel.articles[index]['title']),
                    ],
                  ),
                ),
        ),
        // children: ,
      ),
    );
  }
}
