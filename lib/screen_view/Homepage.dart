import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF075e55),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                )),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.all(5),
              labelColor: Colors.white,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              tabs: const [
                Icon(Icons.camera_alt),
                Text("Chats"),
                Text("Status"),
                Text("Calls"),
              ]),
        ),
        body: TabBarView(children: [
          const Text('camera'),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  foregroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                  backgroundColor: Colors.green,
                ),
                title: const Text(
                  'Sumon',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'How are you ?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.5)),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '12.00 PM',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                      width: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          const Text('Status'),
          const Text('Calls'),
        ]),
      ),
    );
  }
}
