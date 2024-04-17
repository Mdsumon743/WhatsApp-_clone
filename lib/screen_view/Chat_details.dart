// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Chat_detais extends StatefulWidget {
  final String name;
  final String image;
  const Chat_detais({super.key, required this.name, required this.image});

  @override
  State<Chat_detais> createState() => _Chat_detaisState();
}

// ignore: camel_case_types
class _Chat_detaisState extends State<Chat_detais> {
  var messeagedata = [
    {
      'you': 'how are you',
      'time': '6.57 am',
      'its': false,
    },
    {
      'you': ' i am fine ',
      'time': '6.58 am',
      'its': true,
    },
    {
      'you': 'what are you doing',
      'time': '6.59 am',
      'its': false,
    },
    {
      'you': 'nothing doing anything',
      'me': ' i am fine ',
      'time': '7.00 am',
      'its': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e55),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Expanded(
            child: ListTile(
          contentPadding: const EdgeInsets.all(5),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
          ),
          title: Text(
            widget.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'last seen 2 hour ago ',
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messeagedata.length,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                final data = messeagedata[index];
                return data['its'] == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                constraints: const BoxConstraints(
                                    maxWidth: 200,
                                    maxHeight: 30,
                                    minHeight: 30,
                                    minWidth: 200),
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF075e55),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    data['you'].toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Text(
                                data['time'].toString(),
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                constraints: const BoxConstraints(
                                    maxWidth: 200,
                                    maxHeight: 30,
                                    minHeight: 30,
                                    minWidth: 200),
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF075e55),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    data['you'].toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Text(
                                data['time'].toString(),
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.link,
                                )),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.emoji_emotions)),
                            hintText: 'Enter Message',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    backgroundColor: const Color(0xFF075e55),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
