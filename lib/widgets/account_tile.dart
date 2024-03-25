import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {

  const AccountTile({
    super.key,
    required this.selected,
    required this.pathToImage,
    required this.nickName
  });

  final bool selected;
  final String pathToImage;
  final String nickName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).drawerTheme.backgroundColor,
      ),
      child: ListTile(
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(pathToImage,),
                ),
                if (selected)
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 16,
                          weight: 5,
                          fill: 0.99,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 18,),
            Text(
              nickName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}