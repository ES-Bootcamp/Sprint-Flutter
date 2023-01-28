import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({
    Key? key, required this.index, required this.title, required this.subTitle, required this.icon, required this.isSelected, required this.onPressed,
  }) : super(key: key);

  final int index;
  final String title;
  final String subTitle;
  final IconData icon;
  final bool isSelected;
  final Function onPressed;

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.white60,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            child: Text(
              widget.index.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.subTitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              widget.icon,
              size: 28.0,
              color: widget.isSelected ? Colors.green : Colors.grey,
            ),
            onPressed: () {
              widget.onPressed();
            },
          ),
        ],
      ),
    );
  }
}