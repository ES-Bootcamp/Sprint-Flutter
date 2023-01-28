import 'package:flutter/material.dart';
import 'package:login_ui/session_02/widgets/custom_widget.dart';

import 'custom_widgets_list.dart';

class CustomWidgets extends StatefulWidget {
  const CustomWidgets({Key? key}) : super(key: key);

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();
}

class _CustomWidgetsState extends State<CustomWidgets> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom widgets'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        color: Colors.green.shade100,
        child: Center(
          child: CustomWidget(
            index: 1,
            title: 'Example',
            subTitle: 'Sub-Example',
            isSelected: isSelected,
            icon: Icons.star_rate_rounded,
            onPressed: (){
              setState(() {
                isSelected = !isSelected;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CustomWidgetsSecondPage()),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.send),
      ),
    );
  }
}


