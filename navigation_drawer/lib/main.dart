import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  onPressed(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 700),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                onPressed("Profile Button Clicked", context);
              },
              icon: const Icon(Icons.person)),
          IconButton(
              onPressed: () {
                onPressed("Home Button Click", context);
              },
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {
                onPressed("Info Button Click", context);
              },
              icon: const Icon(Icons.info))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: const CircleBorder(),
        foregroundColor: Colors.white,
        elevation: 10,
        onPressed: () {
          onPressed("floating Button Click", context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],
        currentIndex: 1,

        backgroundColor: Colors.red,
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(
          color: Colors.white, // Active icon color,
          size: 40, // Active icon size
        ),
        unselectedIconTheme:
            const IconThemeData(color: Colors.black54, size: 30),
        onTap: (int index) {
          if (index == 0) {
            onPressed("Profile Button Clicked", context);
          } else if (index == 1) {
            onPressed("Home Button Clicked", context);
          } else {
            onPressed("Setting Button Clicked", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                // Aligns the content of the UserAccountsDrawerHeader to the center
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                accountName: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Aktaruzzaman"),
                  ],
                ),
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("coder.aktar@gmail.com")
                  ],
                ),
                currentAccountPicture: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(

                      backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/63299821?s=400&u=b2e7d05b2beaf4613ed04611cc83e7f692a8ade4&v=4"),

                    )
                  ],
                ),
                // Makes the profile picture round using CircleAvatar
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  onPressed("Home Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {
                  onPressed("Profile Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.abc_outlined),
                title: const Text("About"),
                onTap: () {
                  onPressed("About Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.work_history),
                title: const Text("Portfolio"),
                onTap: () {
                  onPressed("Portfolio Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.call),
                title: const Text("Contact"),
                onTap: () {
                  onPressed("Contact Icon Clicked", context);
                })
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                // Aligns the content of the UserAccountsDrawerHeader to the center
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                accountName: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Aktaruzzaman"),
                  ],
                ),
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("coder.aktar@gmail.com")
                  ],
                ),
                currentAccountPicture: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(

                      backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/63299821?s=400&u=b2e7d05b2beaf4613ed04611cc83e7f692a8ade4&v=4"),

                    )
                  ],
                ),
                // Makes the profile picture round using CircleAvatar
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  onPressed("Home Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {
                  onPressed("Profile Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.abc_outlined),
                title: const Text("About"),
                onTap: () {
                  onPressed("About Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.work_history),
                title: const Text("Portfolio"),
                onTap: () {
                  onPressed("Portfolio Icon Clicked", context);
                }),
            ListTile(
                leading: const Icon(Icons.call),
                title: const Text("Contact"),
                onTap: () {
                  onPressed("Contact Icon Clicked", context);
                })
          ],
        ),
      ),
    );
  }
}
