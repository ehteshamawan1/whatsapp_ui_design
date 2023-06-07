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
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Whatsapp'),
              centerTitle: true,
              bottom: const TabBar(
                tabs: [
                  Text('Chats'),
                  Text('Status'),
                  Text('Calls'),
                ],
              ),
            ),
        )
    );
  }
}
