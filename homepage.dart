import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  get image => null;

  final bool isDarkMode = false; // Define the isDarkMode variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Column(children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/space.jpg'),
              ),
              SizedBox(height: 16),
              Text(
                'Muhammad Aqib',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                // Section for phone
                Row(
                  children: [
                    const Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '+92333-1234567',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //for mail
                Row(
                  children: [
                    const Text(
                      'Mail',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'm.aqib@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),

                Divider(),
                // Section for Dark mode
                ListTile(
                  leading: Icon(Icons.dark_mode),
                  title: Text('Dark mode'),
                  trailing: Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      toggleTheme();
                    },
                  ),
                ),

                Divider(),
                // Section for Profile Details
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile Details'),
                  onTap: () {},
                ),
                Divider(),
                // Section for Settings
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {},
                ),
                Divider(),
                // Section for Logout
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void toggleTheme() {}
}
