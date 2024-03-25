import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/account_tile.dart';
import '../widgets/chat_widget.dart';
import '../widgets/custom_drawer_item.dart';

int generateNum({required bool hour}) {
  return Random().nextInt(hour ? 24 : 60);
}

void sortChats() {
  chatList.sort((a, b) {
    if (a.hour != b.hour) {
      return b.hour.compareTo(a.hour);
    } else {
      return b.minute.compareTo(a.minute);
    }
  });
}

List<ChatWidget> chatList = [
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog1.png',
    name: 'Cuttie  ${String.fromCharCode(0x1F496)}${String.fromCharCode(0x1FAE2)}',
    msg: 'Text me at night bae',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog2.png',
    name: 'Mr.Dumb',
    msg: 'I bit my tail off!',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog3.png',
    name: 'Best Friend ${String.fromCharCode(0x1F61D)}',
    msg: 'Let\'s go bark at the birds lol',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog10.png',
    name: 'Ex ${String.fromCharCode(0x274C)}${String.fromCharCode(0x1F6AB)}',
    msg: 'Forget me forever.',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog9.png',
    name: 'Feed dealer '
        '${String.fromCharCode(0x1F9B4)}'
        '${String.fromCharCode(0x1F9B4)}'
        '${String.fromCharCode(0x1F9B4)}',
    msg: '2 bags for 3 sticks',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog4.png',
    name: 'Sir Drools-a-Lot',
    msg: 'Woof woof',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog5.png',
    name: 'Craig from poop party '
        '${String.fromCharCode(0x1F4A9)}'
        '${String.fromCharCode(0x1F4A9)}',
    msg: 'Damn even I can hear I stink',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog6.png',
    name: 'Bro',
    msg: 'I sniffed daisies and now I feel sick',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog7.png',
    name: 'Grandmother',
    msg: 'Send this to 3 your friends and...',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
  ChatWidget(
    pathToImage: 'assets/dog_avatars/dog8.png',
    name: 'lil cousin',
    msg: 'Look, my nose is wet!',
    hour: generateNum(hour: true),
    minute: generateNum(hour: false),
  ),
];

List<AccountTile> accountsList = [
  const AccountTile(
    selected: true,
    pathToImage: 'assets/avatar.png',
    nickName: 'Ovetskak',
  ),
  const AccountTile(
    selected: false,
    pathToImage: 'assets/sid.png',
    nickName: 'Sid Verstappen',
  ),
];

List<CustomDrawerItem> customDrawerItemList = [
  const CustomDrawerItem(
    icon: Icons.group_outlined,
    text: 'New Group',
  ),
  const CustomDrawerItem(
    icon: Icons.account_box_outlined,
    text: 'Contacts',
  ),
  const CustomDrawerItem(
    icon: Icons.call_outlined,
    text: 'Calls',
  ),
  const CustomDrawerItem(
    icon: Icons.near_me_outlined,
    text: 'People Nearby',
  ),
  const CustomDrawerItem(
    icon: Icons.save_outlined,
    text: 'Saved Messages',
  ),
  const CustomDrawerItem(
    icon: Icons.settings_outlined,
    text: 'Settings',
  ),

  const CustomDrawerItem(
    icon: Icons.group_add_outlined,
    text: 'Invite Friends',
  ),
  const CustomDrawerItem(
    icon: Icons.question_mark,
    text: 'Telegram Features',
  ),
];