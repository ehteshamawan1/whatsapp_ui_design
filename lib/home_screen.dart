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
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
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
              const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white70,
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.search,
                color: Colors.white70,
              ),
              const SizedBox(
                width: 7,
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white70,
                ),
                color: const Color(0xff273443),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      'New group',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      'New broadcast',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      'Linked devices',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      'Starred messages',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Community'),
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.91-cdn.com/hub/wp-content/uploads/2023/03/john-wick-movies-ott.jpg'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('3:47 PM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.91-cdn.com/hub/wp-content/uploads/2023/03/john-wick-movies-ott.jpg'),
                      ),
                    ),
                    title: const Text('John Wick'),
                    subtitle: const Text('37 minutes ago'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.91-cdn.com/hub/wp-content/uploads/2023/03/john-wick-movies-ott.jpg'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Today, 3:47 PM'),
                      trailing: Icon(Icons.phone));
                },
              ),
            ],
          ),
        ));
  }
}
