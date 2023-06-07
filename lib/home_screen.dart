import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff273443),
            title: const Text('WhatsApp'),
            centerTitle: false,
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.people)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ],
            ),
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text('Starred messages'),
                  ),
                 const PopupMenuItem(
                    value: 5,
                    child: Text('Settings'),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              Text('Community'),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ));
  }
}
