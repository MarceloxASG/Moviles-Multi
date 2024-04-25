import 'package:flutter/material.dart';

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

List<FAQItem> faqList =[
  FAQItem(
    question: '¿QUE CARRERA ERES?',
    answer: 'Diseño y desarrollo de software'
    ),
    FAQItem(
      question: '¿CUAL ES TU CICLO?',
      answer: 'Quinto'
    ),
];


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'FAQ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
        ),
        body: ListView.builder(
          itemCount: faqList.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(faqList[index].question),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    faqList[index].answer,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}