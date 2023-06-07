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
              backgroundColor: const Color(0xff435A64),
              title: const Text('Whatsapp'),
              centerTitle: false,
              bottom: const TabBar(
                tabs: [
                  Tab(child: Icon(Icons.people)),
                  Tab(child: Text('Chats')),
                  Tab(child: Text('Status')),
                  Tab(child: Text('Calls')),
                ],
              ),
              actions: const [
                Icon(Icons.search),
                SizedBox(width: 10,),
                Icon(Icons.more_vert),
                SizedBox(width: 10,),
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
        )
    );
  }
}
