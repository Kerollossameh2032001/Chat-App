import 'package:chat_app/core/global/theme/app_color/app_light_color.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppLightColor.headerDrawerColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('images/me.jpg'),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.brightness_2))
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("Ahmed Khalid",
                      style: Theme.of(context).textTheme.headline6),
                  Text("0212352125", style: Theme.of(context).textTheme.caption)
                ],
              ),
            ),
          ),
          buildListTile('New Group', Icons.people_alt),
          buildListTile('Contacts', Icons.person),
          buildListTile('Call', Icons.phone),
          buildListTile('Saved Message', Icons.save_rounded),
          buildListTile('Settings', Icons.settings),
          const Divider(thickness: 3),
          buildListTile('Invite Friends', Icons.person_add),
          buildListTile('Chat App Features', Icons.info_outlined),
        ],
      ),
    );
  }

  ListTile buildListTile(String topic, IconData icon) {
    return ListTile(
      onTap: () {},
      title: Text(topic),
      leading: Icon(icon),
    );
  }
}
