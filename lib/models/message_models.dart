import 'package:smart_change/Models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

//Example chats on screen
final List<Message> chats = [
  Message(
      sender: currentUser,
      time: '12-Jan-23',
      text:
          'Hello maggi how are and hope your are doing great Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: jeffWright,
      time: '1:34 am',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: manGreg,
      time: '2:30 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: true),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
  Message(
      sender: minCook,
      time: '9:16 pm',
      text: 'Hello maggi how are and hope your are doing great',
      unread: false),
];

//Example chats on chat screen
final List<Message> messages = [
  Message(
      sender: currentUser, time: '11:15 am', text: 'Hello jeff?', unread: true),
  Message(
      sender: jeffWright, time: '1:34 pm', text: 'I am good man', unread: true),
  Message(
      sender: currentUser,
      time: '1:50 pm',
      text: 'chloe said she needs some algo, can you sell for 500 CSA?',
      unread: true),
  Message(
      sender: jeffWright,
      time: '2:15 pm',
      text:
          'Meanwhile, I have got somone who is willing to buy bulk CSA for 1k dollar',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:00 pm',
      text: 'let me know if you want naira or USDT please',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
  Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
      Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
       Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
      Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
       Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
      Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
       Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
      Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
       Message(
      sender: jeffWright,
      time: '3:34 pm',
      text: 'sure man, thanks bro',
      unread: true),
  Message(
      sender: currentUser,
      time: '2:20 pm',
      text:
          'Thats a gret deal man, and yes I have got CSA, you can pay to my p2p account please',
      unread: true),
];
