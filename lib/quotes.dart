import 'dart:html';

import 'package:breakingbad_quotes_app/quotes_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuotesApp extends StatelessWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Breaking Bad Quotes", style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),),
          backgroundColor: Colors.blue,
        ),
      body: ListView.builder(
        itemCount: quotesApi.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                title: Text(quotesApi[index]["quote"]),
                subtitle: Text(quotesApi[index]["author"]),
                trailing: CircleAvatar(
                  radius: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}