import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SettingTitleItem(title: 'Edit Profile'),
              const SizedBox(
                height: 4,
              ),
              ColoredBox(
                color: Colors.grey.shade800,
                child: ListTile(
                  title: SizedBox(
                    height: 40,
                    child: Text(
                      'Username',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  trailing: const Icon(
                    LineIcons.angleRight,
                    size: 18,
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1721419336937-86dc7d479f2c?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
              ),
              const SettingTitleItem(title: 'User Status'),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: Sizes.md / 2, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey.shade600)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: const Text(
                        'Basic Plan',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SettingItem(title: 'Restore In-App Purchases'),
                ],
              ),
              const SettingTitleItem(title: 'Content options'),
              const Column(
                children: [
                  SettingItem(title: 'Change content language'),
                  SettingItem(title: 'Change service interface language'),
                ],
              ),
              const SettingTitleItem(title: 'Announcements'),
              const SettingItem(title: 'Service announcement'),
              const SettingTitleItem(title: 'Notifications'),
              Column(
                children: [
                  SettingItem(
                    title: 'News and events',
                    trailing: Switch(value: true, activeColor: Colors.white, onChanged: (value) {}),
                  ),
                  SettingItem(
                    title: 'Updates of your favorites',
                    trailing: Switch(value: false, activeColor: Colors.white, onChanged: (value) {}),
                  ),
                ],
              ),
              const SettingTitleItem(title: 'Others'),
              const Column(
                children: [
                  SettingItem(title: 'Help'),
                  SettingItem(title: 'Change tracking permission'),
                  SettingItem(title: 'About us'),
                  SettingItem(title: 'Content Ratings'),
                  SettingItem(title: 'Terms of service'),
                  SettingItem(title: 'Privacy policy'),
                  SettingItem(title: 'Copyrights'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingTitleItem extends StatelessWidget {
  const SettingTitleItem({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.xs, horizontal: Sizes.md),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.title,
    this.trailing,
    super.key,
  });

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), trailing ?? const SizedBox()],
      ),
    );
  }
}
