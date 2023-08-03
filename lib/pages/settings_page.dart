import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  int currentPageIndex = 2;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsView(),
    );
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        SizedBox(height: 50),
        Text(
          'Settings',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Prefrences',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                subtitle: Text('English'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.color_lens),
                title: Text('Theme'),
                subtitle: Text('Light'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                subtitle: Text('On'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 20),
        Text(
          'Privacy & Security',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        Card(
          child: Column(
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Set Password'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.backup),
                title: Text('Backup and Restore'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete Account'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 20),
        Text(
          'Support',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        Card(
          child: Column(
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text('Feedback'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.attach_money_sharp),
                title: Text('Upgrade to Premium'),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 20),
        Card(
          child: Column(
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.privacy_tip_outlined),
                title: Text('Privacy Policy'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.security),
                title: Text('Terms of Service'),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ],
    );
  }
}
