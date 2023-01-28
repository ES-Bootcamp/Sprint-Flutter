import 'package:flutter/material.dart';
import 'package:login_ui/session_02/widgets/custom_widget.dart';

class CustomWidgetsSecondPage extends StatefulWidget {
  const CustomWidgetsSecondPage({Key? key}) : super(key: key);

  @override
  State<CustomWidgetsSecondPage> createState() => _CustomWidgetsSecondPageState();
}

class _CustomWidgetsSecondPageState extends State<CustomWidgetsSecondPage> {
  /// a list that contains selected widgets
  List<int> favorite = [];

  /// a list of constant titles
  List<String> titles = [
    'Flutter',
    'Dart',
    'Widget',
    'Stateless',
    'Stateful',
    'Reusable',
  ];

  /// a list of constant sub-titles
  List<String> subTitles = [
    'Framework based on dart',
    'Programming language',
    'An element of the UI',
    'Have no state',
    'Have state',
    'Can be used anywhere',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom widgets list'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 23.0),
        color: Colors.orange.shade100,
        child: ListView.separated(
          itemCount: titles.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context, int index) {
            return CustomWidget(
              index: index,
              title: titles[index],
              subTitle: subTitles[index],
              icon: Icons.star_rate_rounded,
              isSelected: favorite.contains(index),
              onPressed: (){
                setState(() {
                  if(favorite.contains(index)){
                    favorite.remove(index);
                  }else{
                    favorite.add(index);
                  }
                });
              },
            );
          },
        ),
      ),
    );
  }
}
