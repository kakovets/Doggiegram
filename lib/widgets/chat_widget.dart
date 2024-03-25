import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.pathToImage,
    required this.name,
    required this.msg,
    required this.hour,
    required this.minute,
  });

  final String pathToImage;
  final String name;
  final String msg;
  final int hour;
  final int minute;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(pathToImage,),
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(name),
                    ),
                    Text('${hour.toString().padLeft(2, '0')}:'
                        '${minute.toString().padLeft(2, '0')}'),
                  ],
                ),
                Text(
                  msg,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(.4)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}