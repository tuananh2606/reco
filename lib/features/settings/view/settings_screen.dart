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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
                child: Text(
                  'Edit Profile',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
