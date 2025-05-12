import 'dart:math';
import 'package:application1/data/message.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            shape: Border(bottom: BorderSide(color: Colors.grey, width: 1)),
            isThreeLine: true,
            leading: CircleAvatar(
              backgroundColor:
                  Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]
                      .shade200,
              radius: 30,
              foregroundColor: Colors.black,
              child: Text(
                messages[index]['title']![0],
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(messages[index]["title"]!),
            subtitle: Text(
              messages[index]["body"]!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  TimeOfDay.fromDateTime(
                    DateTime.parse(messages[index]!["date"].toString()),
                  ).format(context),
                ),
                const Icon(Icons.star_outline),
              ],
            ),
            onTap: () {},
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Gmail",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.all_inbox),
              title: const Text("All inboxes"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inbox),
              title: const Text("Primary"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.group_outlined),
              title: const Text("Social"),
              trailing: Chip(
                label: Text("45 news"),
                backgroundColor: Colors.lightBlue,
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("Notifications"),
              trailing: Chip(
                backgroundColor: const Color.fromARGB(255, 223, 228, 145),
                label: Text("12 news"),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.discount_outlined),
              title: const Text("Promotions"),
              trailing: Chip(
                backgroundColor: Colors.lightGreen,
                label: Text("99+ news"),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.star_outline),
              title: const Text("Starred"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Snoozed"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.label_important_outline),
              title: const Text("Important"),
              trailing: Text("3"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.send),
              title: const Text("Sent"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.schedule_send_outlined),
              title: const Text("Schulded"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.outbox_outlined),
              title: const Text("OutBox"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inbox),
              title: const Text("Drafts"),
              trailing: Text("99+"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text("All Mail"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("spam"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.delete_outline),
              title: const Text("Trash"),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
